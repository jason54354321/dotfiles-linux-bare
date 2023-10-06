# run Tmux
if not set -q TMUX
    set -g TMUX tmux new-session -d -s base
    eval $TMUX
    tmux attach-session -d -t base
end

#disable greeting message
function fish_greeting
end


# theme
set -g theme_display_user yes
set -g theme_nerd_fonts yes
set -g theme_date_format "+%a %H:%M"
set -g theme_display_date yes
set -g theme_color_scheme nord
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '

# aliases
alias vi 'nvim'
alias vim 'nvim'
alias vifish 'nvim ~/.config/fish/config.fish'
alias cpwd 'pwd | xargs echo -n | xclip -selection clipboard'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# copy paster
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

if type -q exa
  alias l "exa"
  alias ls "exa"
  alias la "exa -l --icons"
  alias lla "la -a"
  alias lt "exa --tree --level=2 --icons"
end

#alias ls 'exa --icons'
#alias ll 'exa -l --icons'
#alias la 'exa -la --icons'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# env:path
fish_add_path ~/anaconda3/bin
fish_add_path /usr/local/go/bin
fish_add_path /usr/local/jdk-19.0.2/bin
fish_add_path /usr/local/intelliJ/bin
fish_add_path ~/.local/share/nvim/mason/packages/jdtls
fish_add_path ~/opt/lua-ls/bin
fish_add_path /usr/opt/spring-3.1.2/bin
