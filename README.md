# dotfiles-linux-bare
Welcome to my linux dotfiles!


## Overview
The following tools will be installed:
* neovim [(with personal configuration)](https://github.com/jason54354321/nvim-config/tree/refactor/lazy.vim)
* **fish**
* **tmux**
* **peco**
* golang
* c++
  * g++
  * gtest
  * cmake
* python

## Install
```bash
git clone https://github.com/jason54354321/dotfiles-linux-bare.git

chmod +x ~/dotfiles-linux-bare/install.sh && chmod +x ~/dotfiles-linux-bare/install.fish && ~/dotfiles-linux-bare/install.sh

fish ~/dotfiles-linux-bare/install.fish

```

## Known issue
1. needs to press "ctrl-d" once in install progress.
2. place install script in a folder, or the home dir becomes messy.
3. Installed golang is older version `1.13`, which has error when using `go install` command
