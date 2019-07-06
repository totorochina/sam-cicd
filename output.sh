#!/bin/bash

source env.config

# You may have to update ?OutputKey== to what you defined template.yaml output
echo "$STACK"
aws cloudformation describe-stacks --stack-name $STACK \
    --query 'Stacks[0].Outputs[?OutputKey==`HelloWorldApi`].OutputValue' \
    --output text \
    --region $REGION
echo "$STACK_STAGING"
aws cloudformation describe-stacks --stack-name $STACK_STAGING \
    --query 'Stacks[0].Outputs[?OutputKey==`HelloWorldApi`].OutputValue' \
    --output text \
    --region $REGION
echo "$STACK_PROD"
aws cloudformation describe-stacks --stack-name $STACK_PROD \
    --query 'Stacks[0].Outputs[?OutputKey==`HelloWorldApi`].OutputValue' \
    --output text \
    --region $REGION
