export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"
plugins=(git direnv zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# variables
export VISUAL='nvim'
export EDITOR='nvim'
export LANGUAGE=en_US.UTF-8

# path
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cargo/bin

# alias
alias vim='nvim'
alias lss='ls -la'

# functions
function Resume {
   fg
   zle push-input
   BUFFER=""
   zle accept-line
 }
 zle -N Resume

# bindings
bindkey "^Z" Resume
