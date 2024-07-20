if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(~/.local/bin/mise activate zsh)"
#--------------------------------ENV--------------------------------------
source "$HOME/.env" #files where I export my local dev environment variables [remove this shit]
export FZF_DEFAULT_COMMAND='fd --type f --type d --follow --exclude .git'
export FZF_DEFAULT_OPTS="--height 85% --preview 'batcat --style=numbers --color=always {}'"
export ZSH="$HOME/.oh-my-zsh"
export MAIL="pdrago@student.42.rio"
export USER="pdrago"
path+="$HOME/.local/bin"
#-----------------------------OH-MY-ZSH-----------------------------------
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git fzf colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
#------------------------------ALIASES------------------------------------
alias fd="fdfind"
alias find="fdfind"
alias grep='rg'
alias ls='eza --icons'
alias bat='batcat --style=auto'
alias q='exit'
alias vim='nvim'
alias chrome='google-chrome'
alias google='google-chrome'
#---------------------------FUNCTIONS-------------------------------------
vol() {amixer -D pulse sset Master "$1"% > /dev/null}

pc() {
	base_url="git@github.com:"
	if [[ $1 == *"/"* ]]; then
		git clone "$base_url/$1"
	else
		git clone "$base_url/PedroDrago/$1"
	fi
}

finder(){ #NOTE: This finder includes all hidden files, but searches in 2 depth
	if [[ $# -eq 1 ]]; then
		dest=$1
	else
		dest=$(fd . ~ --type f --type d --follow --exclude .git --min-depth 1 --max-depth 3 --hidden| fzf)
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
#-------------------------------KEYBINDINGS------------------------------------
bindkey -s '^F' 'finder'"^M"
#------------------------------POWERLEVEl10K-----------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh
