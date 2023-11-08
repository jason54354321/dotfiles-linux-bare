#!fish

# set defalut shell
chsh -s (which fish)
curl -s https://ohmyposh.dev/install.sh | sudo bash -s

# fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher install jorgebucaran/fisher

# z
fisher install jethrokuan/z

# exa
sudo apt install exa

# fish exa alias
fisher install gazorby/fish-exa

# exa alias
fisher install gazorby/fish-exa

# apply dotfiles
sudo apt install -y tmux
sudo apt install -y peco

cd ~
cp -r dotfiles-linux-bare/.config/* ./.config/

# extra fish setting
echo "alias vi=nvim" >> ~/.config/fish/config.fish
set -U fish_user_paths /usr/local/bin $fish_user_paths
set -U fish_user_paths /opt/nvim/bin $fish_user_paths

# source all configuration
tmux source ~/.config/tmux/tmux.conf
source ~/.config/fish/config.fish
