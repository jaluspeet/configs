export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"
plugins=(git direnv fzf)

source $ZSH/oh-my-zsh.sh

# variables
export VISUAL='nvim'
export EDITOR='nvim'
export LANGUAGE=en_US.UTF-8
export TERM=xterm-256color

# path
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cargo/bin

# alias
alias vim='nvim'
alias lss='ls -la'
alias kcat='kitten icat'
alias kssh='kitten ssh'

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
bindkey "©" fzf-cd-widget
