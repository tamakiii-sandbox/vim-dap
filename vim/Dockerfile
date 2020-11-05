FROM debian:10.5

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
      make \
      vim \
      git \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work/vim
