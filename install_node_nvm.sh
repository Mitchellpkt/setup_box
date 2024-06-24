#!/bin/bash

# Install nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Load nvm into the current shell
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install Node.js version 20
nvm install 20

# Set Node.js version 20 as the default version
nvm alias default 20

# Verify the installed Node.js version
echo "Node.js version: $(node -v)"

# Verify the installed npm version
echo "npm version: $(npm -v)"
