# CLEFeHealth2017IRtask
Official repository for the CLEF 2017 eHealth Lab, IR Task. 
This task is a continuation of the previous CLEF eHealth information retrieval (IR) tasks that ran in 2013, 2014, 2015, and 2016 and embraces the TREC-style evaluation process, with a shared collection of documents and queries, the contribution of runs from participants and the subsequent formation of relevance assessments and evaluation of the participants submissions. 

This year's IR task will continue the growth path identified in 2014, 2015, and 2016's CLEF eHealth information retrieval challenges. The 2017 task uses the new web corpus (ClueWeb12 B13) introduced in 2016. This year we also introduce a new task which explores search personalisation.

The task is structured into four subtasks:
 1. IRTask 1: ad-hoc search
 2. IRTask2: personalized search (new task)
 3. IRTask3: query variations
 4. IRTask4: multilingual search
 
All tasks use the 2016 topics, with the aim to acquire more relevance assessments and the collection reusability.

More information about the tasks are given below. Also please visit the [website of the task](https://sites.google.com/site/clefehealth2017/task-3).

## Organisation of the repository

`assessments` - contains the assessments of relevance and other dimensions (e.g. understandability) for the documents.
  
  `-> 2016` - contains the assessments for the 2016 submissions. Note that in 2017, documents assessed (either relevant or not relevant) are to be excluded from participants submissions.
  
  `-> 2017` - will contain the assessments for the 2017 submissions. 

`other_data` - contains other data associated with the task, e.g., lists of documents excluded from the evaluation, Pagerank scores, etc.

`queries` - contains the queries to be used for the tasks. These are the 2016 queries (see sub-dir `multilingual` for the human translation of the queries in other languages). Note that we have also provided the URL of the web forum we used to initiate the information need (see `queries2016_with_url.xml` and the sub-dir `reddit-posts`). 

`tools` - contains a series of tools and utilities used within the task.

## Tasks Information 

### IRTask 1:  Ad-hoc Search 
This is a standard ad-hoc search task, aiming at retrieving information relevant to people seeking health advice on the web.
This year we are re-using the 2016 topics, with the aim of improving the relevance assessment pool and the collection reusability.  Because we are re-using last year’s topics, we ask participants to explicitly exclude from their search results for each query documents that have been already assessed in 2016 ([a list of these documents is provided](https://github.com/CLEFeHealth/CLEFeHealth2017IRtask/tree/master/other_data) - also a script for checking submissions will be provided in the early May). Participants are however encouraged to devise methods that explicitly explore relevance feedback, i.e. using the already assessed documents to improve their submissions. 

The 2016 topics were developed by mining health web forums where users were seeking advice about specific symptoms, diagnosis, conditions or treatments. For each forum post we generated a set of 6 query variants, representing different ways to express the same information need.

Evaluation measures for IRTask1: NDCG@10, BPref and RBP.


### IRTask 2: Personalized Search (NEW TASK)

This task develops on top of the IRTask1. Here, we aim to personalize the retrieved list of search results so as to match user expertise, measured by how likely the person is to understand the content of a document (with respect to the health information). To this aim, we will use the graded version of the [uRBP evaluation measure](https://link.springer.com/chapter/10.1007/978-3-319-30671-1_21) already adopted in 2016, which evaluates using both topical relevance and other dimensions of relevance, such as understandability and trustworthiness. 

We will further vary the parameters of this evaluation measure to evaluate personalisation to different users. Each topic has 6 query variations: the first 3 have been issued with people with no medical knowledge, while the second 3 have been issued by medical experts. When evaluating results for a query variation, we use a parameter alpha to capture user expertise. The parameter will determine the shape of the gain curve, so that documents at the right understandability level obtain the highest gains, with decaying gains being assigned to documents that do not suit the understandability level of the modelled user. We will use alpha=0.0 for query variation 1, alpha=0.2 for query variation 2, alpha=0.4 for query variation 3, alpha=0.6 for query variation 4, alpha=0.8 for query variation 5 and, finally, alpha=1.0 for query variation 6. This will model increasing level of expertise across query variations for one topic. The intuition in such evaluation is that a person with no specific health knowledge (represented by query variant 1) would not understand complex and technical health material, while an expert (represented by query variant 6) would have little or no interest in reading introductory/basic material. A script that implements this evaluation measure, including the parameterized component, will be made available in early May.

Note that the 2016 collection includes assessments for understandability (for the same documents for which relevance was assessed), thus they can be used by teams for training. Understandability assessments are captured in the qunder files (similar to qrels, but for understandability); the 2016 assessments are available [here](https://github.com/CLEFeHealth/CLEFeHealth2016Task3/blob/master/qrels/task1.qunder) and also in the `assessments/2016` part of this repository. 

As for IRTask1, we ask participants to explicitly exclude from their search results for each query documents that have been already assessed in 2016 (a list of these documents is provided). 

Evaluation measures for IRTask2: uRBP (with alpha).

### IRTask 3: Query Variations
IRTask1 and 2 treated query variations for a topic independently. IRTask3 instead explicitly explores the dependencies among query variations for the same information need. The task aims to foster research into building search systems that are robust to query variations.
Different query variations are generated for the same forum entry (i.e. topic/information need), thus capturing the variability intrinsic in how people formulate queries when searching to answer the same information need. 

For IRTask3 we ask participant to submit a single set of results for each topic (each topic has 6 query variations). Participants are informed of which query variations relate to the same topic, and should take these variations into account when building their systems.  

Submissions will be evaluated using the same measures as for IRTask1 but using the [mean-variance evaluation framework (MVE)](http://dl.acm.org/citation.cfm?id=2983723). In this framework, evaluation results for each query variations for a topic will be averaged and their variance also accounted for to compute a final system performance estimate. A script that implements the the mean-variance evaluation framework will be made available in early May.

Evaluation measures for IRTask3: NDCG@10, BPref and RBP - in the MVE framework.


### IRTask 4: Multilingual Search 

This task, similar to the corresponding one in 2016, offers parallel queries in several languages (Czech, French, Hungarian, German, Polish, Spanish and Swedish). Multilingual submissions will be evaluated against IRtask1 (called IRtask4a for multilingual) and IRtask3 (called IRtask4b for multilingual) - but results for the multilingual queries will be reported separately.


## Registration
Please register on the main CLEF 2017 registration page at http://clef2017-labs-registration.dei.unipd.it/


## Dataset

ClueWeb 12 B13 will be used again this year. If your organization does not have access to this dataset, you can still participate in our task by accessing the infrastructure kindly provided by Microsoft Azure. Nevertheless, every participant should have a licence to use ClueWeb: it is free of charge. This licence can be obtained after filling up and signing every page of the ClueWeb organizational agreement and sending it to lupu@ifs.tuwien.ac.at. In the email, put as subject  “CLEF2017eHealthIR - registration to Clueweb12 on Azure”. Attach to the email the completed form (except page 6).
Your Azure account will be created only after we receive a confirmation that the license has been obtained.

To summarize, the following alternative avenues are available to work on the ClueWeb12 dataset:
(A) You already have ClueWeb12: you do not need to acquire a new copy or complete other licensing forms. Please ensure you are using the ClueWeb 12 B13 version.
(B) You do not have ClueWeb12 and want to obtain an offline copy for your organisation: purchase the dataset from the ClueWeb website. 
(C) You do not have ClueWeb12 and you want online access to the dataset: we are providing access to an Azure instance where participants can access ClueWeb12 B13. This access is available only until the task is completed (i.e., until the CLEF 2017 conference). To access this resource, you need to complete a ClueWeb12 license (free of charge) and email it to Mihai Lupu. Note that it will take up to three weeks to approve your license, thus please apply for access to the collection now.

Note: The Azure instance we are making available to participants includes (1) the dataset, (2) standard indexes built with the Terrier tool and the Indri tool, (3) additional resources such as a spam list, anchor texts, urls, etc. made available through the ClueWeb12 website.

## Queries, other data and scripts

The 2016 queries and the relevance assessments can be obtained at the CLEF2017eHealthIRtask GitHub repository (this repository). Scripts (evaluation scripts and run submissions validation scripts) are also be made available in the repository. We suggest you follow the GitHub repository.
