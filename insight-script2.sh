#!/bin/bash

CIRCLE_API_USER_TOKEN2=""

repos=('dockerfile-wizard' 'mikita_repo' 'sample_app')

for i in "${repos[@]}"
do
      echo $i

      curl --user ${CIRCLE_API_USER_TOKEN2}: https://circleci.com/api/v2/insights/gh/brianoh1979/$i/workflows

      Brian=$(curl --user ${CIRCLE_API_USER_TOKEN2}: https://circleci.com/api/v2/insights/gh/brianoh1979/$i/workflows)

      echo $Brian

      printf '%s\n' $Brian | paste -sd ',' >> file2.csv

done
