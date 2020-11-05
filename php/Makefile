.PHONY: help run clean

REMOTE_HOST := vim
# REMOTE_HOST := host.docker.internal

help:
	@cat $(firstword $(MAKEFILE_LIST))

run:
	php \
		-d xdebug.remote_autostart=1 \
		-d xdebug.remote_enable=1 \
		-d xdebug.remote_host=$(REMOTE_HOST) \
		-d xdebug.idekey=xdebug \
		-d xdebug.remote_port=9000 \
		-d xdebug.remote_handler=dbgp \
		-d xdebug.remote_log=/dev/stdout \
		src/hello.php

clean:
	#
