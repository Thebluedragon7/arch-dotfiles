export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"

plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ls="lsd --icon-theme unicode --long"
alias cat="bat"

reload() {
    echo "[+] Reloading .zshrc" | lolcat -a
    source ~/.zshrc
    echo "[+] Reloading .zshenv" | lolcat -a
    source ~/.zshenv
}

eval $(starship init zsh)

eval $(thefuck --alias)
