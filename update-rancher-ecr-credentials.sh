#! /bin/bash

#
# Prerequisites:
#  1. AWS cli installed and in path
#  2. AWS API Key
#     The AWS IAM User with the required "ECR:" permissions
#  3. Rancher Server with AWS ECR Registries
#  4. Rancher API Key
#  5. curl application in path
#  6. jq application in path
#

#
# Inputs:
#  Set via ENV Vars.
#
#  AWS Inputs: Either set thes AWS ENV Vars, or have the aws cli pre-configured
#    AWS_ACCESS_KEY_ID
#    AWS_SECRET_ACCESS_KEY
#    AWS_DEFAULT_REGION
#
#  Rancher Inputs: The Rancher API Key Must have rancher admin privileges
#    RANCHER_ACCESS_KEY
#    RANCHER_SECRET_KEY
#

#
# Process Logic Outline
# 1. Validate Input
# 2. Retreive aws ecr credentials
# 3. Get list of Registries to Update
# 4. Foreach Registry: Update Credentials
#

#
# Future Improvements
#  * Inputs via CLI Args
#  * Select Rancher Registry by registryId
#  * Select Racnher Registry by projetcId (think Rancher Environment)
