FROM ptrsr/pi-ci
MAINTAINER Tobias Rapp

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y build-essential cmake git ninja-build libopencv-dev
