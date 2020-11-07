FROM php:7.4.12-cli

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      make \
      less \
      dnsutils \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pecl install xdebug && \
    docker-php-ext-enable xdebug

WORKDIR /app
