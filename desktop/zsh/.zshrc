# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#----------------------------------FZF----------------------------------
export FZF_ALT_C_COMMAND='fd --type d --follow --exclude .git'
export FZF_ALT_C_OPTS="--height 85% --preview 'bat --style=numbers --color=always {}'"
export FZF_DEFAULT_COMMAND='fd --type f --type d --follow --exclude .git'
export FZF_DEFAULT_OPTS="--height 85% --preview 'bat --style=numbers --color=always {}'"
bindkey -s '^F' 'vim $(fzf)'"^M"
#----------------------------------PATHS----------------------------------
path+=~/.local/bin
path+='/home/drago/.asdf/installs/rust/1.73.0/bin/'

export ZSH="$HOME/.oh-my-zsh"
export MAIL="pdrago@student.42.rio"
export USER="pdrago"
#-----------------------------------ZSH-----------------------------------
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git asdf z fzf zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
#------------------------------ALIASES------------------------------------
alias bat='bat --style=auto'
alias make='make --no-print-directory'
alias ccf='cc -Wall -Wextra -Werror'
alias find='fd'
alias grep='rg'
alias q='exit'
alias ls='exa --icons'
alias monitor='xrandr --output HDMI-0 --left-of DP-0'
alias vim='nvim'
alias update_repos='./.update_repos'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh