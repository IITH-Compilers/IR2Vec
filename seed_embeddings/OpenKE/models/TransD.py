#coding:utf-8
import numpy as np
import tensorflow as tf
from .Model import model

def tf_resize(tensor, axis, size):
	shape = tensor.get_shape().as_list()
	osize = shape[axis]
	if osize == size:
		return tensor
	if (osize > size):
		shape[axis] = size
		return tf.slice(tensor, begin = (0,) * len(shape), size = shape)
	paddings = [[0, 0] for i in range(len(shape))]
	paddings[axis][1] = size - osize
	return tf.pad(tensor=tensor, paddings = paddings)

class TransD(model):
	r'''
	TransD constructs a dynamic mapping matrix for each entity-relation pair by considering the diversity of entities and relations simultaneously. 
	Compared with TransR/CTransR, TransD has fewer parameters and has no matrix vector multiplication.
	'''
	def _transfer(self, e, t, r):
		# return e + tf.reduce_sum(e * t, -1, keep_dims = True) * r
		return tf_resize(e, -1, r.get_shape()[-1]) + tf.reduce_sum(input_tensor=e * t, axis=-1, keepdims = True) * r

	def _calc(self, h, t, r):
		h = tf.nn.l2_normalize(h, -1)
		t = tf.nn.l2_normalize(t, -1)
		r = tf.nn.l2_normalize(r, -1)
		return abs(h + r - t)

	def embedding_def(self):
		#Obtaining the initial configuration of the model
		config = self.get_config()
		#Defining required parameters of the model, including embeddings of entities and relations, entity transfer vectors, and relation transfer vectors
		self.ent_embeddings = tf.compat.v1.get_variable(name = "ent_embeddings", shape = [config.entTotal, config.hidden_size], initializer = tf.compat.v1.keras.initializers.VarianceScaling(scale=1.0, mode="fan_avg", distribution =("uniform" if False else "truncated_normal")))
		self.rel_embeddings = tf.compat.v1.get_variable(name = "rel_embeddings", shape = [config.relTotal, config.hidden_size], initializer = tf.compat.v1.keras.initializers.VarianceScaling(scale=1.0, mode="fan_avg", distribution =("uniform" if False else "truncated_normal")))
		self.ent_transfer = tf.compat.v1.get_variable(name = "ent_transfer", shape = [config.entTotal, config.hidden_size], initializer = tf.compat.v1.keras.initializers.VarianceScaling(scale=1.0, mode="fan_avg", distribution =("uniform" if False else "truncated_normal")))
		self.rel_transfer = tf.compat.v1.get_variable(name = "rel_transfer", shape = [config.relTotal, config.hidden_size], initializer = tf.compat.v1.keras.initializers.VarianceScaling(scale=1.0, mode="fan_avg", distribution =("uniform" if False else "truncated_normal")))
		self.parameter_lists = {"ent_embeddings":self.ent_embeddings, \
								"rel_embeddings":self.rel_embeddings, \
								"ent_transfer":self.ent_transfer, \
								"rel_transfer":self.rel_transfer}

	def loss_def(self):
		#Obtaining the initial configuration of the model
		config = self.get_config()
		#To get positive triples and negative triples for training
		#The shapes of pos_h, pos_t, pos_r are (batch_size, 1)
		#The shapes of neg_h, neg_t, neg_r are (batch_size, negative_ent + negative_rel)
		pos_h, pos_t, pos_r = self.get_positive_instance(in_batch = True)
		neg_h, neg_t, neg_r = self.get_negative_instance(in_batch = True)
		#Embedding entities and relations of triples, e.g. pos_h_e, pos_t_e and pos_r_e are embeddings for positive triples
		pos_h_e = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=pos_h)
		pos_t_e = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=pos_t)
		pos_r_e = tf.nn.embedding_lookup(params=self.rel_embeddings, ids=pos_r)
		neg_h_e = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=neg_h)
		neg_t_e = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=neg_t)
		neg_r_e = tf.nn.embedding_lookup(params=self.rel_embeddings, ids=neg_r)
		#Getting the required parameters to transfer entity embeddings, e.g. pos_h_t, pos_t_t and pos_r_t are transfer parameters for positive triples
		pos_h_t = tf.nn.embedding_lookup(params=self.ent_transfer, ids=pos_h)
		pos_t_t = tf.nn.embedding_lookup(params=self.ent_transfer, ids=pos_t)
		pos_r_t = tf.nn.embedding_lookup(params=self.rel_transfer, ids=pos_r)
		neg_h_t = tf.nn.embedding_lookup(params=self.ent_transfer, ids=neg_h)
		neg_t_t = tf.nn.embedding_lookup(params=self.ent_transfer, ids=neg_t)
		neg_r_t = tf.nn.embedding_lookup(params=self.rel_transfer, ids=neg_r)
		#Calculating score functions for all positive triples and negative triples
		p_h = self._transfer(pos_h_e, pos_h_t, pos_r_t)
		p_t = self._transfer(pos_t_e, pos_t_t, pos_r_t)
		p_r = pos_r_e
		n_h = self._transfer(neg_h_e, neg_h_t, neg_r_t)
		n_t = self._transfer(neg_t_e, neg_t_t, neg_r_t)
		n_r = neg_r_e
		#The shape of _p_score is (batch_size, 1, hidden_size)
		#The shape of _n_score is (batch_size, negative_ent + negative_rel, hidden_size)
		_p_score = self._calc(p_h, p_t, p_r)
		_n_score = self._calc(n_h, n_t, n_r)
		#The shape of p_score is (batch_size, 1, 1)
		#The shape of n_score is (batch_size, negative_ent + negative_rel, 1)
		p_score =  tf.reduce_sum(input_tensor=_p_score, axis=-1, keepdims = True)
		n_score =  tf.reduce_sum(input_tensor=_n_score, axis=-1, keepdims = True)
		#Calculating loss to get what the framework will optimize
		self.loss = tf.reduce_mean(input_tensor=tf.maximum(p_score - n_score + config.margin, 0))

	def predict_def(self):
		config = self.get_config()
		predict_h, predict_t, predict_r = self.get_predict_instance()
		predict_h_e = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=predict_h)
		predict_t_e = tf.nn.embedding_lookup(params=self.ent_embeddings, ids=predict_t)
		predict_r_e = tf.nn.embedding_lookup(params=self.rel_embeddings, ids=predict_r)
		predict_h_t = tf.nn.embedding_lookup(params=self.ent_transfer, ids=predict_h)
		predict_t_t = tf.nn.embedding_lookup(params=self.ent_transfer, ids=predict_t)
		predict_r_t = tf.nn.embedding_lookup(params=self.rel_transfer, ids=predict_r)
		h_e = self._transfer(predict_h_e, predict_h_t, predict_r_t)
		t_e = self._transfer(predict_t_e, predict_t_t, predict_r_t)
		r_e = predict_r_e
		self.predict = tf.reduce_sum(input_tensor=self._calc(h_e, t_e, r_e), axis=-1, keepdims = True)
