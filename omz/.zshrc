export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"

alias ls="lsd"
alias cat="bat"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

eval $(starship init zsh)

eval $(thefuck --alias)
