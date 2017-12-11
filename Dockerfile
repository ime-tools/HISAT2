ARG version=xenial

FROM ubuntu:${version}

LABEL maintainer="frank.foerster@ime.fraunhofer.de"
LABEL description="Dockerfile providing the HISAT2 mapping software"

RUN apt-get update && apt-get -y install wget tar gzip build-essential


