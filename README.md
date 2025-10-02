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

## Configuration
```bash
# 1) 把 GitHub 上的 bare repo 下載到本機 ~/.cfg
git clone --bare git@github.com:jason54354321/dotfiles-linux-bare.git ~/.cfg

# 2) 設定一個方便用的指令別名：cfg
#   之後用 `cfg` 當 git，工作樹是 $HOME，git 目錄是 ~/.cfg
echo "cfg() { /usr/bin/git --git-dir=\$HOME/.cfg/ --work-tree=\$HOME \"\$@\"; }" >> ~/.zshrc
echo "cfg() { /usr/bin/git --git-dir=\$HOME/.cfg/ --work-tree=\$HOME \"\$@\"; }" >> ~/.bashrc
# 重新載入（依你使用的 shell 擇一）
source ~/.zshrc 2>/dev/null || source ~/.bashrc 2>/dev/null || true

# 3) 避免在 $HOME 看到一大堆「未追蹤」噪音
cfg config --local status.showUntrackedFiles no
```

## Installation
```bash
git clone https://github.com/jason54354321/dotfiles-linux-bare.git

chmod +x ~/dotfiles-linux-bare/install.sh && chmod +x ~/dotfiles-linux-bare/install.fish && ~/dotfiles-linux-bare/install.sh

fish ~/dotfiles-linux-bare/install.fish

```

## Known issue
1. needs to press "ctrl-d" once in install progress.
2. place install script in a folder, or the home dir becomes messy.
3. Installed golang is older version `1.13`, which has error when using `go install` command
