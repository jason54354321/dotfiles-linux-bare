#!fish

# set defalut shell
chsh -s (which fish)

# fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher install jorgebucaran/fisher

# oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# theme
# fish -c "omf install johanson"
omf install bobthefish
set -g theme_nerd_fonts yes

omf install https://github.com/sentriz/fish-pipenv

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

