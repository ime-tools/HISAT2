ARG version=stretch

FROM debian:${version}

LABEL maintainer="frank.foerster@ime.fraunhofer.de"
LABEL description="Dockerfile providing the HISAT2 mapping software"
