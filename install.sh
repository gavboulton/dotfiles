#!/usr/bin/env sh

sudo -v

# Keep-alive: update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Xcode command line tools
xcode-select --install

# zsh is now default shell of macOS `echo $SHELL`
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Works repeatedly
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Install brews..."
brew install awscli \
  go \
  ipython \
  jq \
  jupyterlab \
  kops \
  kubectx \
  kubernetes-cli \
  kustomize \
  skaffold \
  telnet \
  yarn

echo "Install casks..."
brew install --cask alfred \
  brave-browser \
  divvy \
  docker \
  iterm2 \
  firefox \
  google-chrome \
  microsoft-excel \
  microsoft-word \
  slack \
  spotify \
  visual-studio-code \
  vlc \
  webstorm \
  zoomus

echo "Installing NVM..."
# Sets current profile i.e. .bashrc, .zshrc etc.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Conditionally create dev directory in user root
[ ! -d ~/dev ] && mkdir ~/dev
