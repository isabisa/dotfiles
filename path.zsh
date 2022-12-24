# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Load Node.js global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific Node.js binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
