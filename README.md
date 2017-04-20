# CLEFeHealth2017IRtask
Official repository for the CLEF 2017 eHealth Lab, IR Task. 
This task is a continuation of the previous CLEF eHealth information retrieval (IR) tasks that ran in 2013, 2014, 2015, and 2016 and embraces the TREC-style evaluation process, with a shared collection of documents and queries, the contribution of runs from participants and the subsequent formation of relevance assessments and evaluation of the participants submissions. 

This year's IR task will continue the growth path identified in 2014, 2015, and 2016's CLEF eHealth information retrieval challenges. The 2017 task uses the new web corpus (ClueWeb12 B13) introduced in 2016. This year we also introduce a new task which explores search personalisation.

The task is structured into four subtasks:
 1. IRTask 1: ad-hoc search
 2. IRTask2: personalized search (new task)
 3. IRTask3: query variations
 4. IRTask4: multilingual search
 
All tasks use the 2016 topics, with the aim to acquire more relevance assessments and the collection reusability (details below).

## Organisation of the repository

`assessments` - contains the assessments of relevance and other dimensions (e.g. understandability) for the documents
  
  `-> 2016` - contains the assessments for the 2016 submissions. Note that in 2017, documents assessed (either relevant or not relevant) are to be excluded from participants submissions
  
  `-> 2017` - will contain the assessments for the 2017 submissions. 
  
`queries` - contains the queries to be used for the tasks. These are the 2016 queries. Note that we have also provided the URL of the web forum we used to initiate the information need (see `queries2016_with_url.xml`). 
 
