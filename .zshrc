# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#-----------------------------------KEYBINDINGS----------------------------
#----------------------------------ENV----------------------------------
export FZF_DEFAULT_COMMAND='fd --type f --type d --follow --exclude .git'
export FZF_DEFAULT_OPTS="--height 85% --preview 'batcat --style=numbers --color=always {}'"
path+="$HOME/.local/bin"
path+="/usr/lib/git-fuzzy/bin"
export MAIL="pdrago@student.42.rio"
export USER="pdrago"
export ZSH="$HOME/.oh-my-zsh"
#-----------------------------------OH-MY-ZSH-----------------------------------
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git asdf fzf colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
#------------------------------ALIASES------------------------------------
alias fd='fdfind'
alias find='fd'
alias grep='rg'
alias vim='nvim'
alias ls='exa --icons'
alias bat='batcat --style=auto'
alias make='make'
alias ccf='cc -Wall -Wextra -Werror'
alias momovim='NVIM_APPNAME=momovim nvim'
alias lazyvim='NVIM_APPNAME=lazyvim nvim'
alias kickstart='NVIM_APPNAME=kickstart nvim'
alias q='exit'
alias p='python'
alias v='nvim'
#------------------------------FUNCTIONS-----------------------------
vol() {
	amixer -D pulse sset Master "$1"% > /dev/null
}

pc() {
	base_url="git@github.com:"
	if [[ $1 == *"/"* ]]; then
		git clone "$base_url/$1"
	else
		git clone "$base_url/PedroDrago/$1"
	fi
}

getRecentDownload() { #Windows only
    windowsDownloadsLocation="/mnt/c/Users/Jupur/Downloads"
    fileNameRecentDownload=$(ls -Art $windowsDownloadsLocation | tail -1)
    mv "$windowsDownloadsLocation/$fileNameRecentDownload" .
}

finder(){
	if [[ $# -eq 1 ]]; then
		dest=$1
	else
		dest=$(fd . ~ --type f --type d --follow --exclude .git --min-depth 1 | fzf)
	fi

	if [[ -z $dest ]]; then
		return ;
	fi


	if [ -d $dest ]; then
		cd $dest
	else
		file=$(basename "$dest")
		dir=$(dirname "$dest")
		cd $dir && nvim $file
	fi
}

bindkey -s '^F' 'finder'"^M"

#---------------------------------------------------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
