.PHONY: help clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies

dependencies:
	@type vim > /dev/null

install: \
	~/.vimrc \
	~/.vim/autoload/plug.vim

~/.vimrc: .vimrc
	ln -sfnv $(realpath $<) $@

~/.vim/autoload/plug.vim: ~/.vim/autoload
	curl -fLo $@ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

~/.vim/autoload: ~/.vim
	mkdir -p $@

~/.vim:
	mkdir -p $@

clean:
	rm -rf ~/.vimrc
