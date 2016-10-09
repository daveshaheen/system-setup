# System Setup

## OSX

### Install [homebrew](http://brew.sh/)

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    brew tap caskroom/cask
    brew tap caskroom/versions

    brew install \
      ack git go mercurial neovim python python3 reattach-to-user-namespace \
      ruby sbt scala tmux the_silver_searcher vim wget zsh

    cask install \
      appcleaner docker dnscrypt eclipse-java filezilla flux iterm2 java \
      jumpcut murus shiftit sourcetree vagrant virtualbox xquartz

    zsh

### Install [prezto](https://github.com/sorin-ionescu/prezto)

    mkdir -p ~/workspace/src/github.com/sorin-ionescu

    cd ~/workspace/src/github.com/sorin-ionescu

    git clone --recursive https://github.com/sorin-ionescu/prezto.git

    ln -fsv ~/workspace/src/github.com/sorin-ionescu/prezto ~/.zprezto

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

    chsh -s /bin/zsh

### Install [nvm](https://github.com/lukechilds/zsh-nvm)

    mkdir -p ~/.config/zsh
    mkdir -p ~/workspace/src/github.com/lukechilds

    cd ~/workspace/src/github.com/lukechilds

    git clone https://github.com/lukechilds/zsh-nvm.git
    git clone https://github.com/lukechilds/zsh-better-npm-completion.git

    ln -fsv ~/workspace/src/github.com/lukechilds/zsh-nvm ~/.config/zsh/zsh-nvm
    ln -fsv ~/workspace/src/github.com/lukechilds/zsh-better-npm-completion ~/.config/zsh/zsh-better-npm-completion

### Install [eslint](http://eslint.org/)

    npm install -g \
      eslint eslint-config-standard eslint-config-standard-react \
      eslint-plugin-json eslint-plugin-promise eslint-plugin-react eslint-plugin-standard

### Install base16 colors

[base16-iterm2](https://github.com/chriskempson/base16-iterm2.git)
[base16-shell](https://github.com/chriskempson/base16-shell.git)

    mkdir -p ~/workspace/src/github.com/chriskempson

    cd ~/workspace/src/github.com/chriskempson

    git clone https://github.com/chriskempson/base16-iterm2.git
    git clone https://github.com/chriskempson/base16-shell.git

    ln -fsv ~/workspace/src/github.com/chriskempson/base16-shell ~/.config/base16-shell

### Install [vim-plug](https://github.com/junegunn/vim-plug)

    mkdir -p ~/.vim/autoload/
    mkdir -p ~/workspace/src/github.com/junegunn

    cd ~/workspace/src/github.com/junegunn

    git clone https://github.com/junegunn/vim-plug.git

    ln -fsv ~/workspace/src/github.com/junegunn/vim-plug/plug.vim ~/.vim/autoload/plug.vim

### Install [tmuxinator](https://github.com/tmuxinator/tmuxinator)

    gem install tmuxinator

### Install [dotfiles](https://github.com/daveshaheen/system-setup)

    mkdir -p ~/workspace/src/github.com/daveshaheen

    git clone https://github.com/daveshaheen/system-setup.git

    cd ~/workspace/src/github.com/daveshaheen/system-setup

    bash ./install.sh

    nvim -c ":PlugInstall"


## LICENSE

  Copyright 2016 Dave Shaheen

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
