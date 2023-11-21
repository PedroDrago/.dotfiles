# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#----------------------------------FZF----------------------------------
#----------------------------------PATHS----------------------------------
path+=~/.local/bin
path+='/home/drago/.asdf/installs/rust/1.73.0/bin/'

export ZSH="$HOME/.oh-my-zsh"
export MAIL="pdrago@student.42.rio"
export USER="pdrago"
#-----------------------------------ZSH-----------------------------------
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git asdf z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
#------------------------------ALIASES|MACROS-----------------------------
alias bat='bat --style=auto'
alias ccf='cc -Wall -Wextra -Werror'
alias a='./a.out'
alias find='fd'
alias grep='rg'
alias q='exit'
alias t='tmux'
alias ls='exa --icons'
alias nvim='~/.nvim/bin/nvim'
alias monitor='xrandr --output HDMI-0 --left-of DP-0'
alias vim='nvim'
#------------------------KEYBINDINGS--------------------------------------
# bindkey -s '^F' 'tmux-windownizer\n'
# bindkey -s '^@' '^B'
# bindkey -s '^@' 'tmux select-window -t 2\n'
# bindkey -s '^[' 'tmux select-window -t 3\n'
# bindkey -s '^\' 'tmux select-window -t 4\n'
# bindkey -s '^]' 'tmux select-window -t 5\n'
# bindkey -s '^^' 'tmux select-window -t 6\n'
#-------------------------------------------------------------------------

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
