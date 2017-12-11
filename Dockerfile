ARG version=xenial

FROM ubuntu:${version}

LABEL maintainer="frank.foerster@ime.fraunhofer.de"
LABEL description="Dockerfile providing the HISAT2 mapping software"

RUN apt-get update && apt-get -y install \
    wget \
    unzip \
    python \
    build-essential

WORKDIR /opt

RUN wget ftp://ftp.ccb.jhu.edu/pub/infphilo/hisat2/downloads/hisat2-2.1.0-source.zip && unzip hisat2-2.1.0-source.zip && cd hisat2-2.1.0 && make && rm /opt/hisat2-2.1.0-source.zip

ENV PATH "$PATH:/opt/hisat2-2.1.0/"

VOLUME /data

WORKDIR /data

CMD hisat2 --help
