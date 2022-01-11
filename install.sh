#!/usr/bin/env sh

sudo -v

# Keep-alive: update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Xcode command line tools
xcode-select --install

# Works repeatedly
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Install aws/tap"
brew tap aws/tap

echo "Install brews..."
brew install awscli \
  aws-sam-cli \
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
  postico \
  postman \
  slack \
  spotify \
  visual-studio-code \
  vlc \
  whatsapp \
  webstorm \
  zoomus
