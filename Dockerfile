FROM openjdk:17-alpine

ARG HOST_UID
ARG HOST_GID
ARG MY_USER="java"
ARG MY_GROUP="java"
ARG TZ="Asia/Tokyo"

ENV TZ $TZ
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk

RUN apk update && \
    apk add shadow tree tzdata git vim curl wget && \
    groupadd -g ${GID} ${MY_GROUP} && \
    useradd -u ${UID} -g ${GID} -d /home/${MY_USER} -s /bin/bash -m ${MY_USER}

USER $MY_USER

WORKDIR "/home/${MY_USER}/app"

