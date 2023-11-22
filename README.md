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

chmod +x ~/dotfiles-linux-bare/install.sh && chmod +x ~/dotfiles-linux-bare/install.fish && ~/dotfiles-linux-bare/install.sh

fish ~/dotfiles-linux-bare/install.fish

```

## Known issue
1. needs to press "ctrl-d" once in install progress.
2. place install script in a folder, or the home dir becomes messy.
3. Installed golang is older version `1.13`, which has error when using `go install` command
