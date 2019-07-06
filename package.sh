#!/bin/bash

source env.config

sam validate && \
sam build && \
sam package \
    --output-template-file packaged.yaml \
    --s3-bucket $S3_BUCKET
