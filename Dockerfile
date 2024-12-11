FROM openjdk:17-alpine

ARG HOST_UID=1000
ARG HOST_GID=1000
ARG HOST_USER='user'
ARG HOST_GROUP='user'
ARG TZ='Etc/UTC'

ENV TZ $TZ
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk

RUN apk update && \
    apk add shadow tree tzdata git vim curl wget zsh && \
    groupadd -g ${GID} ${HOST_GROUP} && \
    useradd -u ${UID} -g ${GID} -d /home/${HOST_USER} -s /bin/zsh -m ${HOST_USER} && \
    echo $TZ > /etc/timezone && \
    ln -sf /usr/share/zoneinfo/$TZ /etc/localtime

USER $HOST_USER

WORKDIR "/home/${HOST_USER}/app"

