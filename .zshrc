# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#----------------------------------FZF----------------------------------
export FZF_DEFAULT_COMMAND='fd --type f --type d --follow --exclude .git'
export FZF_DEFAULT_OPTS="--height 85% --preview 'batcat --style=numbers --color=always {}'"
bindkey -s '^F' '. finder'"^M"
#----------------------------------PATHS----------------------------------
path+=~/.local/bin
#-----------------------------------42------------------------------------------
export MAIL="pdrago@student.42.rio"
export USER="pdrago"
export PATH="/usr/lib/git-fuzzy/bin:$PATH"
#-----------------------------------OH-MY-ZSH-----------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git asdf fzf colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
#------------------------------ALIASES------------------------------------
alias find='fdfind'
alias fd='fdfind'
alias grep='rg'
alias vim='nvim'
<<<<<<< HEAD
alias v='nvim'
=======
alias v='nvim .'
>>>>>>> acb85e99be6131b734815dba5697aeefc1f20aca
alias ls='exa --icons'
alias bat='batcat --style=auto'
alias make='make --no-print-directory'
alias ccf='cc -Wall -Wextra -Werror'
alias momovim='NVIM_APPNAME=momovim nvim10'
alias lazyvim='NVIM_APPNAME=lazyvim nvim10'
alias kickstart='NVIM_APPNAME=kickstart nvim10'
alias q='exit'
alias t='tmux'
alias grademe='bash -c "$(curl https://grademe.fr)"'
alias pclone='f(){ git clone git@github.com:PedroDrago/"$1" && cd "$1"; }; f'
alias p='python'
alias vol='f(){ amixer -D pulse sset Master "$1"%; }; f > /dev/null'

getRecentDownload() {
    windowsDownloadsLocation="/mnt/c/Users/Jupur/Downloads"
    fileNameRecentDownload=$(ls -Art $windowsDownloadsLocation | tail -1)
    mv "$windowsDownloadsLocation/$fileNameRecentDownload" .
}

#---------------------------------------------------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
