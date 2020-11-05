.PHONY: help setup dependencies build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies \
	deps/vim/vim

deps/vim/vim: deps/vim
	git clone --depth 1 git@github.com:vim/vim.git $@

deps/vim: deps
	mkdir -p $@

deps:
	mkdir -p $@

clean:
	rm -rf deps
