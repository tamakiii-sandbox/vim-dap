.PHONY: help setup dependencies build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies \
	.env

dependencies:
	@type docker-compose > /dev/null

build:
	docker-compose build

.env:
	echo ""  > $@

clean:
	rm -rf .env
