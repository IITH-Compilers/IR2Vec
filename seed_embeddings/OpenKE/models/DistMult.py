# coding:utf-8
import numpy as np
import tensorflow as tf
from .Model import model


class DistMult(model):
    r"""
    DistMult is based on the bilinear model where each relation is represented by a diagonal rather than a full matrix.
    DistMult enjoys the same scalable property as TransE and it achieves superior performance over TransE.
    """

    def _calc(self, h, t, r):
        return tf.reduce_sum(input_tensor=h * r * t, axis=-1, keepdims=False)

    def embedding_def(self):
        config = self.get_config()
        self.ent_embeddings = tf.compat.v1.get_variable(
            name="ent_embeddings",
            shape=[config.entTotal, config.hidden_size],
            initializer=tf.compat.v1.keras.initializers.VarianceScaling(
                scale=1.0,
                mode="fan_avg",
                distribution=("uniform" if True else "truncated_normal"),
            ),
        )
        self.rel_embeddings = tf.compat.v1.get_variable(
            name="rel_embeddings",
            shape=[config.relTotal, config.hidden_size],
            initializer=tf.compat.v1.keras.initializers.VarianceScaling(
                scale=1.0,
                mode="fan_avg",
                distribution=("uniform" if True else "truncated_normal"),
            ),
        )
        self.parameter_lists = {
            "ent_embeddings": self.ent_embeddings,
            "rel_embeddings": self.rel_embeddings,
        }

    def loss_def(self):
        config = self.get_config()
        pos_h, pos_t, pos_r = self.get_positive_instance(in_batch=True)
        neg_h, neg_t, neg_r = self.get_negative_instance(in_batch=True)
        pos_y = self.get_positive_labels(in_batch=True)
        neg_y = self.get_negative_labels(in_batch=True)

        p_h = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=pos_h)
        p_t = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=pos_t)
        p_r = tf.nn.embedding_lookup(params=self.rel_embeddings, ids=pos_r)
        n_h = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=neg_h)
        n_t = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=neg_t)
        n_r = tf.nn.embedding_lookup(params=self.rel_embeddings, ids=neg_r)
        _p_score = self._calc(p_h, p_t, p_r)
        _n_score = self._calc(n_h, n_t, n_r)
        print(_n_score.get_shape())
        loss_func = tf.reduce_mean(
            input_tensor=tf.nn.softplus(-pos_y * _p_score)
            + tf.nn.softplus(-neg_y * _n_score)
        )
        regul_func = tf.reduce_mean(
            input_tensor=p_h ** 2 + p_t ** 2 + p_r ** 2 + n_h ** 2 + n_t ** 2 + n_r ** 2
        )
        self.loss = loss_func + config.lmbda * regul_func

    def predict_def(self):
        config = self.get_config()
        predict_h, predict_t, predict_r = self.get_predict_instance()
        predict_h_e = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=predict_h)
        predict_t_e = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=predict_t)
        predict_r_e = tf.nn.embedding_lookup(params=self.rel_embeddings, ids=predict_r)
        self.predict = -self._calc(predict_h_e, predict_t_e, predict_r_e)
