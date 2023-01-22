FROM ghcr.io/mlflow/mlflow:v2.1.1

MAINTAINER Pranay Chandekar "pranayc6@gmail.com"

ARG APP_HOME=/opt/deployment

ENV APP_HOME=${APP_HOME}
COPY *-server.sh ${APP_HOME}/

RUN chmod a+x ${APP_HOME}/start-server.sh

ENTRYPOINT ["/opt/deployment/start-server.sh"]
