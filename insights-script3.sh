#!/bin/bash

CIRCLE_API_USER_TOKEN2=""

echo 'Type in a project to get metrics for:'

read project

echo 'Type in the workflow name to get metrics for:'

read workflow

curl --user ${CIRCLE_API_USER_TOKEN2}: https://circleci.com/api/v2/insights/gh/brianoh1979/$project/workflows/$workflow

Brian=$(curl --user ${CIRCLE_API_USER_TOKEN2}: https://circleci.com/api/v2/insights/gh/brianoh1979/$project/workflows/$workflow)

echo $Brian

printf '%s\n' $Brian | paste -sd ',' >> file3.csv
