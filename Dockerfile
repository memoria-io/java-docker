FROM openjdk:21-slim-bullseye

MAINTAINER Ismail Marmoush<marmoushismail@gmail.com>

RUN apt-get update && apt-get install -y curl wget \
    apt-utils man nano net-tools apt-transport-https iputils-ping gettext iproute2