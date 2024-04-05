#!/usr/bin/env sh

sudo -v

# Keep-alive: update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Xcode command line tools
xcode-select --install

# Works repeatedly
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add more repositories to the list of formulae that Homebrew tracks, updates, and installs from.
echo "Install aws/tap"
brew tap aws/tap
