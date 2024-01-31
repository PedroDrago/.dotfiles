# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#----------------------------------FZF----------------------------------
export FZF_DEFAULT_COMMAND='fd --type f --type d --follow --exclude .git'
export FZF_DEFAULT_OPTS="--height 85% --preview 'bat --style=numbers --color=always {}'"
bindkey -s '^F' '. finder'"^M"
#----------------------------------PATHS----------------------------------
path+=~/.local/bin
path+='/home/drago/.asdf/installs/rust/1.75.0/bin/'
path+="/usr/local/go/bin"

#-----------------------------------42------------------------------------------
export MAIL="pdrago@student.42.rio"
export USER="pdrago"
#-----------------------------------OH-MY-ZSH-----------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git asdf fzf zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
#------------------------------ALIASES------------------------------------
alias bat='batcat --style=auto'
alias make='make --no-print-directory'
alias ccf='cc -Wall -Wextra -Werror'
alias find='fdfind'
alias fd='fdfind'
alias grep='rg'
alias q='exit'
alias ls='exa --icons'
alias monitor='xrandr --output HDMI-0 --left-of DP-0'
alias m=monitor
alias t='tmux'
alias vim='nvim'
alias grademe='bash -c "$(curl https://grademe.fr)"'
alias pclone='f(){ git clone git@github.com:PedroDrago/"$1" && cd "$1"; }; f'

#---------------------------------------------------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
