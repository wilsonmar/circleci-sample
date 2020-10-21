
This repo contains shell scripts for running against the CircleCI SaaS solution V2.0 API (not the older on-prem. server solution). 
The script writes out to a simple output file for consumption by a dashboard of the outputted values.

   https://circleci.com/docs/api/v2/#tag/Insights

1. Get your Personal API Token
1. Log into GitHub.com, click your profile avatar picture, User Settings, Personal API Tokens.
1. Paste the PAT two double quotes in the variable definition at the top ("CIRCLE_API_USER_TOKEN2").
1. The Insights endpoints are a component

   The first script allows you to type in the name of the project that you want to get the metrics for.

   The second script cycles through an array of defined repos and returns the metrics for these.
   The code retrieves all of a user's projects from GitHub and create the array of values to cycle through.

   The third script drills down into the metrics for specific workflows for a project that you define.


