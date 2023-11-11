#!fish

# set defalut shell
chsh -s (which fish)
curl -s https://ohmyposh.dev/install.sh | sudo bash -s

# fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher install jorgebucaran/fisher

# oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# z
fisher install jethrokuan/z

# exa
# sudo apt install exa
sudo curl -LO https://github.com/ogham/exa/releases/download/v0.10.0/exa-linux-x86_64-v0.10.0.zip
sudo mkdir exa
sudo unzip exa-linux-x86_64-v0.10.0.zip -d exa
sudo mv exa/bin/exa /usr/local/bin

# fish exa alias
fisher install gazorby/fish-exa

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sudo curl -LO https://github.com/nelsonenzo/tmux-appimage/releases/download/3.3a/tmux.appimage
sudo chmod +x tmux.appimage
sudo mv tmux.appimage /usr/bin/tmux

# peco
sudo apt install -y peco

# apply dotfiles
cd ~
cp -r dotfiles-linux-bare/.config/* ./.config/

# extra fish setting
echo "alias vi=nvim" >> ~/.config/fish/config.fish
set -U fish_user_paths /usr/local/bin $fish_user_paths
set -U fish_user_paths /opt/nvim/bin $fish_user_paths

tmux source ~/.config/tmux/tmux.conf
source ~/.config/fish/config.fish

# git dotfiles' bare repo
git init --bare $HOME/dotfiles
config config --local status.showUntrackedFiles no


