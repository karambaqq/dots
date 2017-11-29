# Path to your oh-my-zsh installation.
export ZSH=/home/maxq/.oh-my-zsh

#ZSH_THEME="agnoster"

plugins=(git fast-syntax-highlighting git-it-on colored-man-pages zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

MINIMAL_MAGIC_ENTER="I Don't want this"
MINIMAL_INSERT_CHAR="\u2014"
MINIMAL_USER_CHAR="~"
source ~/.minimal/minimal.zsh

# User configuration
bindkey ";5C" forward-word
DEFAULT_USER=$USER
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
alias ls='colorls'
alias update="pacaur -Syu"
alias cat=ccat

alias run_mk="cd ~/MKX_NEW/mkx_derzkiy/src/ && python3 req.py &; cd ~/MKX_NEW/mkx_flawwless/src/ && python3 req.py &; cd ~/MKX_NEW/mkx_perfect/src/ && python3 req.py &; cd ~/MKX_NEW/mkx_risk/src/ && python3 req.py"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export EDITOR=/usr/bin/nvim
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
