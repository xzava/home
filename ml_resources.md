

# Resources

https://deepai.org/

https://deepai.org/apis

https://towardsdatascience.com/fasttext-sentiment-analysis-for-tweets-a-straightforward-guide-9a8c070449a2

https://www.coursera.org/professional-certificates/applied-artifical-intelligence-ibm-watson-ai
https://www.tensorflow.org/certificate


https://fasttext.cc/
https://fasttext.cc/docs/en/unsupervised-tutorial.html
https://fasttext.cc/docs/en/supervised-tutorial.html

https://www.fast.ai/
https://course.fast.ai/


https://pytorch.org/tutorials/
https://pytorch.org/tutorials/beginner/deep_learning_60min_blitz.html


https://www.tensorflow.org/tutorials
https://www.tensorflow.org/guide/keras

https://www.kaggle.com/


https://stackabuse.com/python-for-nlp-working-with-facebook-fasttext-library/
https://medium.com/swlh/playing-with-word-vectors-308ab2faa519


https://medium.com/deeper-learning/glossary-of-deep-learning-word-embedding-f90c3cec34ca


https://medium.com/@karpathy/yes-you-should-understand-backprop-e2f06eab496b

https://www.youtube.com/watch?v=gYpoJMlgyXA&feature=youtu.be&t=14m14s

https://cs231n.github.io/


http://introtodeeplearning.com/

https://www.kaggle.com/pmarcelino/comprehensive-data-exploration-with-python

https://www.kaggle.com/vanshjatana/a-simple-tutorial-to-data-visualization

Article explaining simple neural-networks
https://machinelearningmastery.com/neural-networks-crash-course/

Aggregation articles:
https://github.com/josephmisiti/awesome-machine-learning
https://github.com/onnx/models


http://neuralnetworksanddeeplearning.com/

http://karpathy.github.io/2019/04/25/recipe/

https://dawn.cs.stanford.edu/benchmark/

https://medium.com/@pushkarmandot/https-medium-com-pushkarmandot-what-is-lightgbm-how-to-implement-it-how-to-fine-tune-the-parameters-60347819b7fc


https://towardsdatascience.com/how-to-deploy-a-machine-learning-model-dc51200fe8cf

https://parl.ai/projects/recipes/	

https://parl.ai/projects/dialogue_safety/

https://parl.ai/docs/index.html

https://ai.facebook.com/blog/online-speech-recognition-with-wav2letteranywhere/

https://aihub.cloud.google.com/u/0/s?category=notebook&order=2


########################################
[NEW_SECTION]

Terms:



regression

neuron
Weights
bias

hidden layer
input layer
output layer

hybrid network

activation function
softmax activation
sigmoid activation

parametric models
Curse of Dimensionality
Bias-Variance Tradeoff

Supervised Learning

UnSupervised Learning

decision trees
Latent Dirichlet Allocation (LDA)
Principle Component Analysis (PCA)

ROC (receiver operating characteristic) 
AUC is area under the ROC curve

probability

Ensemble Learning

Bagging, or Bootstrap Aggregating

backproagration


One-hot encoding

normalization

standardize

loss function

Stochastic Gradient Descent
gradient descent

Chain rule

Delta Rule

forward pass on the network

inference

epoch

Learning rate / step size

batch learning
online learning

Momentum

Learning Rate Decay

predictions

validation data

model

neural networks

layers of neurons


Catastrophic interference

Overfitting

embedding algorithm

self-attention


Gaussian distribution (Normal Distribution)

frequency distribution
probability distributions 

Bernoulli Distribution
Uniform Distribution
Binomial Distribution
Normal Distribution
Poisson Distribution
Exponential Distribution

Cumulative distribution 

https://www.analyticsvidhya.com/blog/2017/09/6-probability-distributions-data-science/

confusion_matrix

DIFFERENT PLOTS:
scatter plot
box and whisker plot
histogram
Linear Regression


Stratified cross validation

Stochastic

ALGORITHMS:
- linear (LR and LDA)
- nonlinear (KNN, CART, NB and SVM)

Logistic Regression (LR)

Linear Discriminant Analysis (LDA)

K-Nearest Neighbors (KNN).

Classification and Regression Trees (CART).

Gaussian Naive Bayes (NB).

Support Vector Machines (SVM).

Light GBM

###################################

Common Programming libraries  (python)
 - tensorflow		https://www.tensorflow.org/
 - pytoruch			https://pytorch.org/
 - keras 			https://keras.io/
 - theanos 			https://github.com/Theano/Theano
 - nltk 			https://www.nltk.org/
 - pandas 			https://pandas.pydata.org/docs/
 - numpy 			https://numpy.org/doc/stable/ 
 - Scikit-learn     https://scikit-learn.org/
 - onnx 			https://onnx.ai/
 - fastai 			https://docs.fast.ai/



#########################
[new_section]
TYPES OF MODELS





Multilayer Perceptrons (MLPs)

Convolutional Neural Networks (CNNs) - map image data to an output variable

Recurrent Neural Networks (RNNs) - 
  LSTM  - Long short term memory
  Gated recurrent units (GRUs) 


NEAT 

Autoencoder

GAN


CNN - map image data to an output variable, The benefit of using CNNs is their ability to develop an internal representation of a two-dimensional image. CNNs work well with data that has a spatial relationship.


attention based model



DEEP LEARNING


Classification
 - Supervised leanring
 - Unsupervised

Generation



#################
#################
#################

RNN

https://github.com/karpathy/char-rnn
https://github.com/jcjohnson/torch-rnn
https://gist.github.com/karpathy/d4dee566867f8291f086
https://github.com/lilianweng/stock-rnn

https://github.com/crisbal/docker-torch-rnn

RNNs, were designed to work with sequence prediction problems.

One-to-Many: An observation as input mapped to a sequence with multiple steps as an output.

Many-to-One: A sequence of multiple steps as input mapped to class or quantity prediction.

Many-to-Many: A sequence of multiple steps as input mapped to a sequence with multiple steps as output.

Note: Many-to-Many problem is often referred to as sequence-to-sequence, or seq2seq 

Text data
Speech data
Classification prediction problems
Regression prediction problems
Generative models


"advantage of much faster training speed."

https://towardsdatascience.com/the-fall-of-rnn-lstm-2d1594c74ce0

This article argues that RNN and LSTM are inefficent and attention networks should be used instead.

spech to text as brought up a few times.

Transformer & Hierarchical neural attention 

Was the suggested replacement


https://towardsdatascience.com/illustrated-guide-to-lstms-and-gru-s-a-step-by-step-explanation-44e9eb85bf21

Recurrent Neural Networks suffer from short-term memory

During back propagation, recurrent neural networks suffer from the vanishing gradient problem. 

Gradients are values used to update a neural networks weights. The vanishing gradient problem is when the gradient shrinks as it back propagates through time. If a gradient value becomes extremely small, it doesn’t contribute too much learning.

#################
#################
#################


Multilayer Perceptrons (MLPs)

https://machinelearningmastery.com/neural-networks-crash-course/

#################
#################
#################

Transformer

https://arxiv.org/abs/1706.03762
https://jalammar.github.io/illustrated-transformer/

encoder - decoder

###########################################################
[NEW SECTION]

Models & papers


BEGINEER MODELS:
Iris flower data set:
https://en.wikipedia.org/wiki/Iris_flower_data_set

Hand Writing dataset


REGEX:

	https://news.ycombinator.com/item?id=12269468

	[NLP regex](https://github.com/nicholaslocascio/deep-regex)
	[Regex builder](http://regex.inginf.units.it/)


Puncuation:

	.
	.
	.




#####################################################################

# Defing a probelm [Machine Learning]

Step 1: What is the problem?
Step 2: Why does the problem need to be solved?
Step 3: How would I solve the problem?
Step 4: Document learnigs and outcome


Step 1: What is the problem? Describe the problem informally and formally and list assumptions and similar problems.
Step 2: Why does the problem need to be solve? List your motivation for solving the problem, the benefits a solution provides and how the solution will be used.
Step 3: How would I solve the problem? Describe how the problem would be solved manually to flush domain knowledge.


https://machinelearningmastery.com/how-to-define-your-machine-learning-problem/

Step 1:

 - Describe the problem as though you were describing it to a friend or colleague. 
   ie  one sentence description

 - Formalise problem
 ~~~
	 "A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E." - Tom Mitchell’s machine learning formalism


	 Task (T): 		Classify a tweet that has not been published as going to get retweets or not.
	 Experience (E): A corpus of tweets for an account where some have retweets and some do not.
	 Performance (P): Classification accuracy, the number of tweets predicted correctly out of all tweets considered as a percentage.

~~~
 - Assumptions:
  Create a list of assumptions about the problem and it’s phrasing.
  useful to highlight questions that can be tested against real data 

~~~
  EG:
  For example:

  The specific words used in the tweet matter to the model.
  The specific user that retweets does not matter to the model.
  The number of retweets may matter to the model.
  Older tweets are less predictive than more recent tweets.
~~~

 - Similar problems
 Other problems can also point to algorithms and data transformations that could be adopted to spot check performance.

 ~~~
For example: A related problem would be email spam discrimination that uses text messages as input data and needs binary classification decision.
 ~~~



 Step 2: Why does the the problem need to be solved?

 Motivation
 Solution Benefits
 Solution Use

 Consider your motivation for solving the problem.
 It is important to be clear on the benefits of the problem being solved to ensure that you capitalize on them.
 how the solution to the problem will be used and what type of lifetime you expect the solution to have.


 Step 3: How would I solve the problem?

  - Solve manually first

  List out step-by-step 

  List out step-by-step what data you would collect, how you would prepare it and how you would design a program to solve the problem.

  include experiments you need to perform to highlight uncertainties


 Step 4:

 Write down your learnings and document the process and outcome, and how you could improve the outcome next time. or what resources that could beneift a improved outcome.


 #########################################################################33
 [NEW SECTION]

 Beginners Machine Learning Projects

 ### https://www.dezyre.com/article/top-10-machine-learning-projects-for-beginners/397


 Sales forcasting
 Sales Forecasting using Walmart Dataset

Sales Prediction using BigMart


 Recommendation system
  - music
  - movies
  - articles

Stock price Prediction using time series data


Wine Quality


Handwritten digits Classification 


House price prediction

Sentiment Analysis


Iris Flowers Classification

https://machinelearningmastery.com/machine-learning-in-python-step-by-step/

https://elitedatascience.com/machine-learning-projects-for-beginners

The goal is to take out-of-the-box models and apply them to different datasets.

invaluable skill of prototyping models quickly

Importing data
Cleaning data
Splitting it into train/test or cross-validation sets
Pre-processing
Transformations
Feature engineering


regression, classification, and clustering algorithms.


Data sources

http://archive.ics.uci.edu/ml/
https://www.kaggle.com/datasets
https://www.data.gov/

data visualization and exploratory analysis



Finance

Quantitative value investing… Predict 6-month price movements based fundamental indicators from companies’ quarterly reports.

Forecasting… Build time series models, or even recurrent neural networks, on the delta between implied and actual volatility.

Statistical arbitrage… Find similar stocks based on their price movements and other factors and look for periods when their prices diverge.

https://www.youtube.com/watch?v=URTZ2jKCgBc&list=PLQVvvaa0QuDd0flgGphKCej-9jp-QdzZ3&index=1

https://www.quandl.com/open-data

https://www.quantopian.com/data

http://usfundamentals.com/download

https://www.quandl.com/data/FRED/documentation/documentation


MNIST Handwritten Digit Classification Challenge


Investigate Enron / Wiki leaks

Anomaly detection… Map the distribution of emails sent and received by hour and try to detect abnormal behavior leading up to the public scandal.

Social network analysis… Build network graph models between employees to find key influencers.

Natural language processing… Analyze the body messages in conjunction with email metadata to classify emails based on their purposes.


http://www.cs.cmu.edu/~enron/

http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.296.9477&rep=rep1&type=pdf



Write ML Algorithms from Scratch

 For example, try extending a vanilla logistic regression algorithm into a lasso/ridge regression by adding regularization parameters.


https://beckernick.github.io/logistic-regression-from-scratch/


https://blog.cambridgecoding.com/2016/01/16/machine-learning-under-the-hood-writing-your-own-k-nearest-neighbour-algorithm/


https://marcobonzanini.com/2015/03/02/mining-twitter-data-with-python-part-1/


https://dev.twitter.com/streaming/overview

https://stocktwits.com/developers/docs


Improve Health Care


Preventative care… Predicting disease outbreaks on both the individual and the community level.

Diagnostic care… Automatically classifying image data, such as scans, x-rays, etc.

Insurance… Adjusting insurance premiums based on publicly available risk factors.


https://www.ehdp.com/vitalnet/datasets.htm

https://www.data.gov/health/


https://data.worldbank.org/data-catalog/health-nutrition-and-population-statistics



# tech with tim
linear regression  - Student grades
https://archive.ics.uci.edu/ml/datasets/Student+Performance

Clustering / k nearist neibours - safest cars
https://archive.ics.uci.edu/ml/datasets/Car+Evaluation

Cancer tumors - classifing
https://techwithtim.net/tutorials/machine-learning-python/svm-1/


digit data set
https://techwithtim.net/tutorials/machine-learning-python/k-means-2/



https://hackernoon.com/top-5-machine-learning-projects-for-beginners-47b184e7837f
Transactions Predictions w/ GNY


#######################

https://elitedatascience.com/machine-learning-interview-questions-answers

Machine learning Interview

Your technical and programming skills

Your ability to structure solutions to open-ended problems

Your ability to apply machine learning effectively

Your ability to analyze data with a range of methods

Your communication skills, cultural fit, etc.

And your mastery of key concepts in data science and machine learning (← this is the focus of this post)




############################################
[NEW SECTION]

Datasets


Hand written numbers 

http://yann.lecun.com/exdb/mnist/



http://archive.ics.uci.edu/ml/index.php


Most Popular Data Sets (hits since 2007):
	3299588:	Iris
	1814769:	Adult
	1400641:	Wine
	1240745:	Breast Cancer Wisconsin (Diagnostic)
	1212653:	Heart Disease
	1206163:	Wine Quality
	1184573:	Bank Marketing
	1172703:	Car Evaluation
	976737:		Human Activity Recognition Using Smartphones
	926538:		Abalone
	876099:		Forest Fires
	645285:		Student Performance

All data sets:
http://archive.ics.uci.edu/ml/datasets.php

El+Nino
http://archive.ics.uci.edu/ml/datasets/El+Nino



###


[NEW SECTION]

AI BUSINESS APPLICATIONS

S-a-a-S startup: Customer lifetime value, new accounts, account lifetime, churn rate, usage rate, social share rate
Retail bank: Offline leads, online leads, new accounts (segmented by account type), risk factors, product affinities
e-Commerce: Product sales, average cart value, cart abandonment rate, email leads, conversion rate


marketing team be more efficient?
Clustering algorithms to build custom customer segments for each type of marketing campaign.

Natural language processing for headlines to predict performance before running ad spend.

Predict conversion probability based on a user's website behavior in order to create better re-targeting campaigns.





TABS OPEN


https://jalammar.github.io/feedforward-neural-networks-visual-interactive/

https://jalammar.github.io/visual-interactive-guide-basics-neural-networks/

https://techwithtim.net/tutorials/machine-learning-python/svm-1/

https://machinelearningmastery.com/python-machine-learning-mini-course/

http://neuralnetworksanddeeplearning.com/chap1.html

https://elitedatascience.com/machine-learning-interview-questions-answers

https://towardsdatascience.com/neat-an-awesome-approach-to-neuroevolution-3eca5cc7930f

https://www.youtube.com/watch?v=8HyCNIVRbSU

https://towardsdatascience.com/illustrated-guide-to-lstms-and-gru-s-a-step-by-step-explanation-44e9eb85bf21

https://www.youtube.com/watch?v=WUvTyaaNkzM

http://karpathy.github.io/2015/05/21/rnn-effectiveness/


https://blog.exxactcorp.com/examining-the-transformer-architecture-part-3-training-a-transformer-network-from-scratch-in-docker/

http://jalammar.github.io/illustrated-transformer/
