# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# NVM bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"

export CHROME_EXECUTABLE="vivaldi-stable"

path+=("$HOME/.flutter/bin")
path+=("$BUN_INSTALL/bin")
path+=("$HOME/.local/bin")
path+=("$HOME/.cargo/bin")

export PATH
