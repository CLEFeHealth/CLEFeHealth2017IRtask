# Other data for CLEFeHealth2017IRtask

This folder contains additional data for the task, including the list of excluded documents: All 2017 tasks use the 2016 topics, with the aim to acquire more relevance assessments and the collection reusability. As such, we exclude the documents already assessed in 2016 from the evaluation. 

## Organisation of this directory

__*t1_list_excluded.txt*__ - List of documents to be excluded from the submitted run for task 1. File in the format: `queryid docid`

__*t2_list_excluded.txt*__ - List of documents to be excluded from the submitted run for task 2. File in the format: `queryid docid`

__*t3_list_excluded.txt*__ - List of documents to be excluded from the submitted run for task 3. File in the format: `queryid docid`

__*t4a_list_excluded.txt*__ - List of documents to be excluded from the submitted run for task 4a. File in the format: `queryid docid`

__*t4b_list_excluded.txt*__ - List of documents to be excluded from the submitted run for task 4b. File in the format: `queryid docid`



## Additional data for the task, not included in this repository

* [PageRank](http://www.lemurproject.org/clueweb12/PageRank.php): PageRank scores for ClueWeb12 (Full dataset and B13 - from the Lemur Project).
* [Anchor text](http://wwwhome.ewi.utwente.nl/~hiemstra/2013/anchor-text-for-clueweb12.html) (Twente Univ): Provided by Djoerd Hiemstra.
* [Spam Rankings](http://www.mansci.uwaterloo.ca/~msmucker/cw12spam/) (Waterloo Univ): For in the ClueWeb12 dataset, provided by Mark Smucker.
* [LDA topic models](http://cake.da.inf.ethz.ch/clueweb-topicmodels/index.html) (1000 topics) on the full ClueWeb12 dataset, provided by Carsten Eickhoff.
* [FACC1 Freebase Annotations](http://lemurproject.org/clueweb12/FACC1.php) (Google Inc): Freebase entity annotations for the ClueWeb12 dataset.
* [ClueWeb12_All_edocid2url.txt.bz2](http://www.lemurproject.org/clueweb12/ClueWeb12_All_edocid2url.txt.bz2): (11G) ClueWeb12 dataset (733,019,372 documents) Mapping of External Document Ids to URLs. Each line represents one document in the format: <edocid> <document url> (delimited by one space).


