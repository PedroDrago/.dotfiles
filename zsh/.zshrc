# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#----------------------------------PATHS----------------------------------
path+=~/.local/bin
export path

path+='/home/drago/.asdf/installs/rust/1.67.1/bin/'
export path

export ZSH="$HOME/.oh-my-zsh"

path+="$HOME/dotnet"
export DOTNET_ROOT=$HOME/dotnet

#-----------------------------------ZSH-----------------------------------

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git asdf z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#------------------------------ALIASES|MACROS-----------------------------
alias ls='exa --icons'
alias bat='bat --style=auto'
alias grep='rg'
alias q='exit'
alias telegram='/opt/telegram/telegram' #for dmenu i guess? don't remember at all.
alias t='tmux'
alias ur='update_repos'
alias vim='nvim'
alias c='clear'
alias v='vim'
#makes cd ls after
#------------------------KEYBINDINGS--------------------------------------
bindkey -s '^F' 'tmux-windownizer\n'
bindkey -s '^@' '^B'
# bindkey -s '^@' 'tmux select-window -t 2\n'
# bindkey -s '^[' 'tmux select-window -t 3\n'
# bindkey -s '^\' 'tmux select-window -t 4\n'
# bindkey -s '^]' 'tmux select-window -t 5\n'
# bindkey -s '^^' 'tmux select-window -t 6\n'
#-------------------------------------------------------------------------

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
