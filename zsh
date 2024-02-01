# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"
CASE_SENSITIVE="false"
DISABLE_LS_COLORS="true"

plugins=(git sudo history encode64 copypath zsh-autosuggestions zsh-syntax-highlighting)


# AUTO START THESE COMMANDS
neofetch
clear
/$HOME/Code/C/welcome

alias remindme="/$HOME/Code/C/welcome"

# General Aliases
alias c="clear"
alias sn="shutdown now"
alias .c="cd ~/.config"



# NEOVIM ALIASES
alias v="nvim"
alias vrc="cd ~/.config/nvim && v"
alias notes="cd ~/Documents/notes && v"
alias nvc="cd ~/Code/C && v"
alias nvrst="cd ~/Code/Rust && v"




# ZSH ALIASES
alias zsrc="source ~/.zshrc"
alias zrc="nvim ~/.zshrc"
zshgit() {
  cp ~/.zshrc ~/Documents/backups/zsh/
  cd ~/Documents/backups/zsh/
  git add .
  git commit -m "$*"
  git push -u github main
  cd ~
}




# GIT ALIASES
alias gitadd="git add ."
alias glog="git log"
alias grem="git remote -v"

gitsign() {
  eval "$(ssh-agent -s)"
  ssh-add ~/Documents/Github/key
}

gitauto() {
  remote="$1"
  branch="$2"
  shift 2  # Shifts the first two arguments out of the way
  git add .
  git commit -m "$*"
  git push -u "$remote" "$branch"
}

source $ZSH/oh-my-zsh.sh

# Hyprland

alias hyprc="nvim ~/.config/hypr/hyprland.conf"

# Kitty!!

alias krc="nvim ~/.config/kitty/kitty.conf"

# waybar

alias wrc="v ~/.config/waybar/"


# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

path+=('/usr/games')

export PATH
