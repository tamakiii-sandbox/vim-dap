.PHONY: help setup dependencies build bash vim clean

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

bash: ../docker-compose.yml
	docker-compose -f $< run --rm vim $@

clean:
	rm -rf deps
