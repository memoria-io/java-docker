FROM openjdk:17-slim-bullseye

MAINTAINER Ismail Marmoush<marmoushismail@gmail.com>

RUN apt-get update && apt-get install -y curl apt-utils man nano
