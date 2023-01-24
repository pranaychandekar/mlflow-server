## MLFlow Tracking Server - Docker

[MLflow](https://mlflow.org/) is an open source platform to manage the ML lifecycle, including experimentation, reproducibility, deployment, and a central model registry. 

<p align="center">
  <strong>MLFlow Tracking Server</strong>
</p>

![MLFlow Tracking Server](https://user-images.githubusercontent.com/22236038/214224523-719f1c0f-3253-4fb2-87f5-e66c6b5f0154.png)

MLflow currently offers four components:

![MLFlow Components](https://user-images.githubusercontent.com/22236038/214224427-96ec61b6-e635-4c4a-8f65-422222e6811d.png)

To track ML experiments and version models, we need to host the MLFlow Tracking Server or MLFlow Server. To make this task simple, this repository offers the containerized solution for hosting the MLFlow Server with PostgreSQL backend in minutes. 

Prerequisites to host it on your local system:
1. [Docker Engine](https://docs.docker.com/engine/install/)
2. [Docker Compose](https://docs.docker.com/compose/)

The PostgreSQL will be used to store all your experiments data. 

The documentation contains:

1.  Descriptions of the files
2.  Instructions to host the MLFlow Server
3.  Instructions to use the MLFlow Server

---

## Content Details

| File Name | Description |
| --- | --- |
| `docker-compose.yml` | The file that brings up the entire setup |
| `Dockerfile` | The dockerfile used to create the docker image |
| `start_server.sh` | The script to start the MLFlow Server |

---

## Start the MLFlow Server with PostgreSQL backend

**Step 01**: Run the docker compose command

Run the following command in the directory with the `docker-compose.yml` file.

```plaintext
docker compose up
```

With this single command, your entire setup will come up. You can check the running containers with the following command.

```plaintext
docker ps
```

You should see the `mlflow-server` and `postgres` containers running. 

<br>

**Step 02**: Launch the MLFlow Server UI

Go to your browser and enter the below url

```plaintext
http://localhost:5000
```

Your MLFlow Server is now ready to track your ML experiments and model versions.

<p align="center">
  <strong>MLFlow - Model Registry</strong>
</p>

![MLFlow Model Registry](https://user-images.githubusercontent.com/22236038/214224554-869773b7-bb8f-470d-a951-133e210421a5.png)

You can also try connecting to the PostgreSQL database using SQL clients such as [DBeaver](https://dbeaver.io/)

![MLFlow PostgreSQL](https://user-images.githubusercontent.com/22236038/214240038-10318ceb-7bd4-4834-9bc5-8fe24e65edab.png)

<br>

**Step 03**: Cleanup

Run this command to perform the cleanup post usage.

```plaintext
docker compose down
```

This command will delete both the containers. However, the images are still there. 




---

<p align="center">
<strong>Author</strong>: <a href="https://linktr.ee/pranaychandekar">Pranay Chandekar</a>
</p>
