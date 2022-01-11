echo "Installing NVM..."
# Sets current profile i.e. .bashrc, .zshrc etc.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Conditionally create dev directory in user root
[ ! -d ~/dev ] && mkdir ~/dev