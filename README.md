# dotfiles-linux-bare
> currently work in progress

Preinstalled:
* **fish**
* **tmux**
* **peco**
* **nvim**
* golang
* c++
  * g++
  * gtest
  * cmake
* python
* etc...

## Install
```bash
git clone https://github.com/jason54354321/dotfiles-linux-bare.git

chmod +x ~/dotfiles-linux-bare/install.sh 
~/dotfiles-linux-bare/install.sh

chmod +x ~/dotfiles-linux-bare/install.fish
fish ~/dotfiles-linux-bare/install.fish

# One lineer
git clone https://github.com/jason54354321/dotfiles-linux-bare.git && chmod +x ~/dotfiles-linux-bare/install.sh && chmod +x ~/dotfiles-linux-bare/install.fish && ~/dotfiles-linux-bare/install.sh && fish ~/dotfiles-linux-bare/install.fish
```

## Known issue
1. fish theme wont apply correctly.
2. needs to press <c-d> once in install progress.
3. tmux is not the newest version(currently is 3.2a, published at 2021y)
