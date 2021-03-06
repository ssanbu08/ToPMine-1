#!/bin/bash

classname="topicmodel/RunPhraseLDA"
echo $classpath
titles="input"

trainFile="input_dataset_output/input_partitionedTraining.txt" 		# the training File 	e.g. dblp_subset_partitionedTraining
#trainFile="/Users/ahmed/Dropbox/dataset/dblp_subset_output/dblp_subset_normalLDA.txt"
testFile="input_dataset_output/input_partitionedTest.txt"  		# the test File		e.g. dblp_subset_partitionedTest
wordTopicAssign="input_dataset_output/input_wordTopicAssign.txt"	#the topic assignment of each phrase
topicFile="input_dataset_output/intput_topics.txt"			#the word count(distribution) for each topic
paraFile="input_dataset_output/input_phrLDA_info.txt"			#the information about the phraseLDA

#constraint lda and phraselda
usePhraseLDA=$1
K=$2								# number of topics
iter=$3 								#number of iterations
optBurn=$4
alpha=$5
optInt=$6

echo $trainFile
echo $testFile
echo $wordTopicAssign
echo $topicFile
echo $paraFile
echo $K
echo $iter
java $MEM_FLG $classname $trainFile $testFile $wordTopicAssign $topicFile $paraFile $K $iter $usePhraseLDA $optBurn $alpha $optInt
