#!/bin/bash

if [ ! -f ~/.zpreztorc ]; then
	ln -s $(pwd)/prezto/zpreztorc ~/.zpreztorc
	echo "linked ~/.zpreztorc"
else
	echo "ln: ~/.zpreztorc: file exists; remove and re-run."
fi

if [ ! -f ~/.tmux.conf ]; then
	ln -s $(pwd)/tmux/tmux.conf ~/.tmux.conf
	echo "linked ~/.tmux.conf"
else
	echo "ln: ~/.tmux.conf: file exists; remove and re-run."
fi

if [ ! -f ~/.vimrc ]; then
	ln -s $(pwd)/vim/vimrc ~/.vimrc
	echo "linked ~/.vimrc"
else
	echo "ln: ~/.vimrc: file exists; remove and re-run."
fi
