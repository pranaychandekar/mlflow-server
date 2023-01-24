## MLFlow Tracking Server - Docker

[MLflow](https://mlflow.org/) is an open source platform to manage the ML lifecycle, including experimentation, reproducibility, deployment, and a central model registry. MLflow currently offers four components:

1.  MLFlow Tracking
2.  MLFlow Projects
3.  MLFlow Models
4.  MLFlow Registry
<br>
<p align="center">          
  <img src="/docs/images/mlflow-server-01.png" alt="MLFlow Components">          
</p>    
<br>
To track ML experiments and version models, we need to host the MLFlow Tracking Server or MLFlow Server. To make this task simple, this repository offers the containerized solution for hosting the MLFlow Server in minutes. The only thing that you need to host it on your local system is the [Docker Engine](https://docs.docker.com/engine/install/).

The documentation contains:

1.  Descriptions of the files
2.  Instructions to host the MLFlow Server
3.  Instructions to use the MLFlow Server

---

## Content Details

| File Name | Description |
| --- | --- |
| `Dockerfile` | The dockerfile used to create the docker image |
| `start_server.sh` | The script to start the MLFlow Server |

---

## Start the MLFlow Server

**Step 01**: Build the docker image of the MLFlow Server

Run the following command in the directory with the Dockerfile

```plaintext
 docker build --network=host -t mlflow-server .
```

Check the container with the following command

```plaintext
docker images
```

You should see the `mlflow-server` image in the output.

**Step 02**: Run the lambda function container

Run the following command.

```plaintext
docker run -d --network=host --name=mlflow-server mlflow-server
```

This will create the lambda function container. Now your container is up and running to process the invocation.

**Step 03**: Verify the running container

Please execute the command below to verify whether the container is running.

```plaintext
docker ps
```

You should see the `mlflow-server` container running.

**Step 04**: Launch the MLFlow Server UI

Go to your browser and enter the below url

```plaintext
http://localhost:5000
```

Your MLFlow Server is now ready to track your ML experiments and model versions.

**MLFlow - Experiment Tracking**
<br>
<p align="center">          
  <img src="/docs/images/mlflow-server-02.png" alt="MLFlow Experiment Tracking">          
</p>    
<br>

**MLFlow - Model Registry**
<br>
<p align="center">          
  <img src="/docs/images/mlflow-server-03.png" alt="MLFlow Model Registry">          
</p>    
<br>
---

**Author**: [Pranay Chandekar](https://linktr.ee/pranaychandekar)