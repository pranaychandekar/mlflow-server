#!/usr/bin/env bash
set -e

echo "***************  Launching MLFlow Server  ***************"

mlflow server \
    --host 0.0.0.0 \
    --port 5000 \
    --default-artifact-root ${BUCKET} \
    --backend-store-uri postgresql+psycopg2://${USERNAME}:${PASSWORD}@${HOST}:${PORT}/${DATABASE}