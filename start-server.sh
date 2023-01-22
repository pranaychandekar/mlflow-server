#!/usr/bin/env bash

echo "***************  Launching MLFlow Server  ***************"

mlflow server \
    --host 0.0.0.0 \
    --port 5000
