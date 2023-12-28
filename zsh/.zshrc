export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"
plugins=(git direnv)

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
alias cdp='cd ~/Projects/ && ls -la'
alias cdn='cd ~/Notes/ && ls -la'
alias lss='ls -la'
alias icat='kitten icat'

# functions
function Resume {
   fg
   zle push-input
   BUFFER=""
   zle accept-line
 }
 zle -N Resume
 bindkey "^Z" Resume
