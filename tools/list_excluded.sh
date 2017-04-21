#!/bin/bash

# get the list of documents excluded from the 2017 evaluation for each query, from the qrels.

if [ "$1" == "-h" ]; then
  echo "Usage: `list_excluded qrels_file.txt`"
  echo "This script allows to get the list of documents excluded from the 2017 evaluation for each query, from the qrels (the qrels should be the 2016 qrels - for example: ../assessments/2016/task1.qrels)."
  exit 0
fi

awk '{print $1 " " $3}' $1 | sort