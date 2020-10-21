#!/bin/bash

CIRCLE_API_USER_TOKEN2=""

echo 'Type in a project to get metrics for:'

read project

curl --user ${CIRCLE_API_USER_TOKEN2}: https://circleci.com/api/v2/insights/gh/brianoh1979/$project/workflows

Brian=$(curl --user ${CIRCLE_API_USER_TOKEN2}: https://circleci.com/api/v2/insights/gh/brianoh1979/$project/workflows)

echo $Brian

printf '%s\n' $Brian | paste -sd ',' >> file1.csv
