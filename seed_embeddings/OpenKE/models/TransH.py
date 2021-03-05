
#coding:utf-8
import numpy as np
import tensorflow as tf
from .Model import model

class TransH(model):
	r'''
	To preserve the mapping propertities of 1-N/N-1/N-N relations, 
	TransH inperprets a relation as a translating operation on a hyperplane. 
	'''
	def _transfer(self, e, n):
		n = tf.nn.l2_normalize(n, -1)
		return e - tf.reduce_sum(input_tensor=e * n, axis=-1, keepdims = True) * n

	def _calc(self, h, t, r, flag = True):
		h = tf.nn.l2_normalize(h, -1)
		t = tf.nn.l2_normalize(t, -1)
		r = tf.nn.l2_normalize(r, -1)
		return abs(h + r - t)

	def embedding_def(self):
		#Obtaining the initial configuration of the model
		config = self.get_config()
		#Defining required parameters of the model, including embeddings of entities and relations, and normal vectors of planes
		self.ent_embeddings = tf.compat.v1.get_variable(name = "ent_embeddings", shape = [config.entTotal, config.hidden_size], initializer = tf.compat.v1.keras.initializers.VarianceScaling(scale=1.0, mode="fan_avg", distribution =("uniform" if False else "truncated_normal")))
		self.rel_embeddings = tf.compat.v1.get_variable(name = "rel_embeddings", shape = [config.relTotal, config.hidden_size], initializer = tf.compat.v1.keras.initializers.VarianceScaling(scale=1.0, mode="fan_avg", distribution =("uniform" if False else "truncated_normal")))
		self.normal_vectors = tf.compat.v1.get_variable(name = "normal_vectors", shape = [config.relTotal, config.hidden_size], initializer = tf.compat.v1.keras.initializers.VarianceScaling(scale=1.0, mode="fan_avg", distribution =("uniform" if False else "truncated_normal")))
		self.parameter_lists = {"ent_embeddings":self.ent_embeddings, \
								"rel_embeddings":self.rel_embeddings, \
								"normal_vectors":self.normal_vectors}

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
		#Getting the required normal vectors of planes to transfer entity embeddings
		pos_norm = tf.nn.embedding_lookup(params=self.normal_vectors, ids=pos_r)
		neg_norm = tf.nn.embedding_lookup(params=self.normal_vectors, ids=neg_r)

		#Calculating score functions for all positive triples and negative triples
		p_h = self._transfer(pos_h_e, pos_norm)
		p_t = self._transfer(pos_t_e, pos_norm)
		p_r = pos_r_e
		n_h = self._transfer(neg_h_e, neg_norm)
		n_t = self._transfer(neg_t_e, neg_norm)
		n_r = neg_r_e
		#Calculating score functions for all positive triples and negative triples
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
		predict_norm = tf.nn.embedding_lookup(params=self.normal_vectors, ids=predict_r)	
		h_e = self._transfer(predict_h_e, predict_norm)
		t_e = self._transfer(predict_t_e, predict_norm)
		r_e = predict_r_e
		self.predict = tf.reduce_sum(input_tensor=self._calc(h_e, t_e, r_e), axis=-1, keepdims = True)
