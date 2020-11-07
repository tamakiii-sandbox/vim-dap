.PHONY: help setup dependencies build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies \
	vim/deps/vim/vim

dependencies:
	@type docker-compose > /dev/null

build:
	docker-compose build

vim/deps/vim/vim: vim/docker.mk
	make -f $< setup

clean: vim/docker.mk
	rm -rf .env
	make -f $< clean
