.PHONY: help setup dependencies install vim clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies

dependencies:
	@type vim > /dev/null

install: \
	~/.vimrc \
	~/.vim/autoload/plug.vim \
	~/.vim/plugged

vim:
	vim ~/.vimrc

~/.vimrc: .vimrc
	ln -sfnv $(realpath $<) $@

~/.vim/autoload/plug.vim: ~/.vim/autoload
	curl -fLo $@ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

~/.vim/plugged: ~/.vim
	vim -c 'PlugInstall!' -c 'qa!'

~/.vim/autoload: ~/.vim
	mkdir -p $@

~/.vim:
	mkdir -p $@

clean:
	rm -rf ~/.vimrc
