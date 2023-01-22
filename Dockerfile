FROM ghcr.io/mlflow/mlflow

MAINTAINER Pranay Chandekar "pranayc6@gmail.com"

ARG APP_HOME=/opt/deployment

ENV APP_HOME=${APP_HOME}
COPY *-server.sh ${APP_HOME}/

RUN chmod a+x ${APP_HOME}/start-server.sh

RUN pip3 install psycopg2-binary

ENTRYPOINT ["/opt/deployment/start-server.sh"]
