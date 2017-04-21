#!/bin/bash

# check if a submission to CLEF2017 eHealth IR Task is valid. 
# As of 21/04/2017: check if the submission contains an excluded document

if [ "$1" == "-h" ]; then
  echo "Usage: `check_submission path_to_directory_containing_list_excluded task_number submission_file`"
  echo "This script allows to check whether a candidate submission contains any excluded document (documents already assessed in 2016). If it does, the submission is not valid."
  echo "Task number is the task for which the submission is checked against, i.e. 1, 2, 3, 4a, 4b"
  echo "Note - fields in the submission_file are assumed to be space separated"
  exit 0
fi

echo "Checking for errors in the submission"

echo "1. Checking for documents that have been excluded from the assessment"
echo "		Excluded documents present in the submission:"
while read line; do
  pattern=$(echo $line | awk '{print $1 " Q0 " $2}')
  grep "$pattern" $3
done < $1/t$2_list_excluded.txt