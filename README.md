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

chmod +x ~/dotfiles-linux-bare/install.sh && chmod +x ~/dotfiles-linux-bare/install.fish

~/dotfiles-linux-bare/install.sh
fish ~/dotfiles-linux-bare/install.fish

# One lineer
git clone https://github.com/jason54354321/dotfiles-linux-bare.git && chmod +x ~/dotfiles-linux-bare/install.sh && chmod +x ~/dotfiles-linux-bare/install.fish && ~/dotfiles-linux-bare/install.sh && fish ~/dotfiles-linux-bare/install.fish
```

## Known issue
1. needs to press "ctrl-d" once in install progress.
2. tmux is not the newest version(currently is 3.2a, published at 2021y)
