# coding:utf-8
import numpy as np
import tensorflow as tf
from .Model import model


class RESCAL(model):
    def _calc(self, h, t, r):
        return h * tf.matmul(r, t)

    def embedding_def(self):
        # Obtaining the initial configuration of the model
        config = self.get_config()
        # Defining required parameters of the model, including embeddings of entities and relations
        self.ent_embeddings = tf.compat.v1.get_variable(
            name="ent_embeddings",
            shape=[config.entTotal, config.hidden_size],
            initializer=tf.compat.v1.keras.initializers.VarianceScaling(
                scale=1.0,
                mode="fan_avg",
                distribution=("uniform" if False else "truncated_normal"),
            ),
        )
        self.rel_matrices = tf.compat.v1.get_variable(
            name="rel_matrices",
            shape=[config.relTotal, config.hidden_size * config.hidden_size],
            initializer=tf.compat.v1.keras.initializers.VarianceScaling(
                scale=1.0,
                mode="fan_avg",
                distribution=("uniform" if False else "truncated_normal"),
            ),
        )
        self.parameter_lists = {
            "ent_embeddings": self.ent_embeddings,
            "rel_matrices": self.rel_matrices,
        }

    r"""
	RESCAL is a tensor factorization approach to knowledge representation learning,
	which is able to perform collective learning via the latent components of the factorization.
	"""

    def loss_def(self):
        # Obtaining the initial configuration of the model
        config = self.get_config()
        # To get positive triples and negative triples for training
        # The shapes of pos_h, pos_t, pos_r are (batch_size, 1)
        # The shapes of neg_h, neg_t, neg_r are (batch_size, negative_ent + negative_rel)
        pos_h, pos_t, pos_r = self.get_positive_instance(in_batch=True)
        neg_h, neg_t, neg_r = self.get_negative_instance(in_batch=True)
        # Embedding entities and relations of triples, e.g. p_h, p_t and p_r are embeddings for positive triples
        p_h = tf.reshape(
            tf.nn.embedding_lookup(params=self.ent_embeddings, ids=pos_h),
            [-1, config.hidden_size, 1],
        )
        p_t = tf.reshape(
            tf.nn.embedding_lookup(params=self.ent_embeddings, ids=pos_t),
            [-1, config.hidden_size, 1],
        )
        p_r = tf.reshape(
            tf.nn.embedding_lookup(params=self.rel_matrices, ids=pos_r),
            [-1, config.hidden_size, config.hidden_size],
        )
        n_h = tf.reshape(
            tf.nn.embedding_lookup(params=self.ent_embeddings, ids=neg_h),
            [-1, config.hidden_size, 1],
        )
        n_t = tf.reshape(
            tf.nn.embedding_lookup(params=self.ent_embeddings, ids=neg_t),
            [-1, config.hidden_size, 1],
        )
        n_r = tf.reshape(
            tf.nn.embedding_lookup(params=self.rel_matrices, ids=neg_r),
            [-1, config.hidden_size, config.hidden_size],
        )
        # The shape of _p_score is (batch_size, 1, hidden_size)
        # The shape of _n_score is (batch_size, negative_ent + negative_rel, hidden_size)
        _p_score = tf.reshape(self._calc(p_h, p_t, p_r), [-1, 1, config.hidden_size])
        _n_score = tf.reshape(
            self._calc(n_h, n_t, n_r),
            [-1, config.negative_ent + config.negative_rel, config.hidden_size],
        )
        # The shape of p_score is (batch_size, 1)
        # The shape of n_score is (batch_size, 1)
        p_score = tf.reduce_sum(
            input_tensor=tf.reduce_mean(input_tensor=_p_score, axis=1, keepdims=False),
            axis=1,
            keepdims=True,
        )
        n_score = tf.reduce_sum(
            input_tensor=tf.reduce_mean(input_tensor=_n_score, axis=1, keepdims=False),
            axis=1,
            keepdims=True,
        )
        # Calculating loss to get what the framework will optimize
        self.loss = tf.reduce_sum(
            input_tensor=tf.maximum(n_score - p_score + config.margin, 0)
        )

    def predict_def(self):
        config = self.get_config()
        predict_h, predict_t, predict_r = self.get_predict_instance()
        predict_h_e = tf.reshape(
            tf.nn.embedding_lookup(params=self.ent_embeddings, ids=predict_h),
            [-1, config.hidden_size, 1],
        )
        predict_t_e = tf.reshape(
            tf.nn.embedding_lookup(params=self.ent_embeddings, ids=predict_t),
            [-1, config.hidden_size, 1],
        )
        predict_r_e = tf.reshape(
            tf.nn.embedding_lookup(params=self.rel_matrices, ids=predict_r),
            [-1, config.hidden_size, config.hidden_size],
        )
        self.predict = -tf.reduce_sum(
            input_tensor=self._calc(predict_h_e, predict_t_e, predict_r_e),
            axis=1,
            keepdims=False,
        )
