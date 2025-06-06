if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#--------------------------------MISE-------------------------------------
eval "$(~/.local/bin/mise activate zsh)"
#--------------------------------ENV--------------------------------------
FZF_DEFAULT_COMMAND='fd --type f --type d --follow --exclude .git'
FZF_DEFAULT_OPTS="--height 85% --preview 'bat --style=numbers --color=always {}'"
path+="$HOME/.local/bin"
if lscpu | grep "Model name" | grep -q "i7-8700"; then
    export MACHINE="desktop"
else
    export MACHINE="-"
fi
export TRANSPARENT="FALSE"
#-----------------------------OH-MY-ZSH-----------------------------------
ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git fzf colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
#------------------------------ALIASES------------------------------------
alias vim='nvim'
alias ls='eza --icons'
alias cat='bat --style=auto'
alias q='exit'
alias nvima='nvim $(fd . -t file)'
#---------------------------FUNCTIONS-------------------------------------
#vol() {amixer -D pulse sset Master "$1"% > /dev/null} # PULSEAUDIO
vol() {wpctl set-volume @DEFAULT_AUDIO_SINK@ "$1"%} # PIPEWIRE

pc() {
	base_url="git@github.com:"
    for repo in "$@"; do
        if [[ $repo == *"/"* ]]; then
            git clone --recursive "$base_url/$repo"
        else
            git clone --recursive "$base_url/PedroDrago/$repo"
        fi
    done
}

finder(){ #NOTE: This finder includes all hidden files, but searches in 2 depth
	if [[ $# -eq 1 ]]; then
		dest=$1
	else
		dest=$(fd . ~ --type f --type d --follow --exclude .git --min-depth 1 --max-depth 4 --hidden| fzf)
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
#---------------------------------OPTIONS--------------------------------------
unsetopt histverify # NOTE: allow !! to directly repeat last command
#------------------------------POWERLEVEl10K-----------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh
