#!fish

# set defalut shell
chsh -s (which fish)
curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh init fish --config '~/dotfiles-linux-bare/amro-edited.omp.json' | source

# fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher install jorgebucaran/fisher

# oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

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
source ~/.config/fish/config.fish

# omf install johanson
# omf install bobthefish
omf install plain
omf install https://github.com/sentriz/fish-pipenv
