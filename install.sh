#!/bin/bash

cd ~/workspace/src/github.com/daveshaheen/system-setup

ln -fsv ~/workspace/src/github.com/daveshaheen/system-setup/prezto/zpreztorc ~/.zpreztorc
ln -fsv ~/workspace/src/github.com/daveshaheen/system-setup/prezto/zshrc ~/.zshrc
ln -fsv ~/workspace/src/github.com/daveshaheen/system-setup/tmux/tmux.conf ~/.tmux.conf
ln -fsv ~/workspace/src/github.com/daveshaheen/system-setup/vim/vimrc ~/.vimrc
ln -fsv ~/workspace/src/github.com/daveshaheen/system-setup/tern/tern-config ~/.tern-config

ln -fsv ~/workspace/src/github.com/daveshaheen/system-setup/scripts ~/scripts

ln -fsv /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion ~/.zprezto/modules/completion/external/src/_docker
ln -fsv /Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion ~/.zprezto/modules/completion/external/src/_docker-machine
ln -fsv /Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion ~/.zprezto/modules/completion/external/src/_docker-compose
