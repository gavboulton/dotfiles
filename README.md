# Dotfiles

Clone this repo into the user root.

When setting up a new account, configure username and email for Git.

My dotfiles:

1. [Oh My Zsh](#oh-my-zsh)
1. [Homebrew](#homebrew)
1. [Install CLI tools](#install-cli-tools)
1. [Install apps](#install-apps)
1. [Configure shell](#configure-shell)
1. [macOS preferences](#macos-preferences)

## Oh My Zsh

```bash
sh oh-my-zsh.sh
```

### Zsh custom plugins

Custom Zsh plugins should not be added to the plugins array. Instead add:

```bash
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

above

```bash
source $ZSH/oh-my-zsh.sh
```

### Zsh Compaudit issues (Intel only?)

Ignore Compaudit for subsequent admin users by adding `ZSH_DISABLE_COMPFIX=true` to the top of ~/.zshrc.

Alternatively:

When opening a new terminal window and receiving `zsh compinit: insecure files, run compaudit for list.`, permission must be changed for each directory. Symlinked directories must be run on the source, ie:

```bash
sudo chmod -R root:staff /usr/local/share/zsh
sudo chmod -R root:staff /usr/local/share/zsh/site-functions
sudo chown -R root:staff /usr/local/Cellar
sudo chown -R root:staff /usr/local/Homebrew
```

> These may be affected by the permission changes in software installs

## Homebrew

Install from 'main' user account.

```bash
sh homebrew.sh
```

### Permissions (Intel only)

May need to set Homebrew and Cellar permissions if installs fail

```bash
sudo chown -R $(whoami) /usr/local/var/homebrew
sudo chown -R $(whoami) /usr/local/Cellar
```

### Cleanup

Run `brew cleanup` for any compinit errors, ie 'compinit:503: no such file or directory: /usr/local/share/zsh/site-functions/_brew_cask'

## Install CLI tools

```bash
sh install-brews.sh
```

## Install apps

```bash
sh install-casks.sh
```

## Configure shell

```bash
sh configure.sh
```

## macOS preferences

```bash
./.macos
```

> Make file executable > chmod u+x .macos

### Security

> After creating a new user, ensure MacBook locks after closing lid. Lock screen > Require password immediately after sleep or screen saver begins.

### Jump words in iTerm2

[Use ⌥ ← and ⌥→ to jump forwards/backwards words in iTerm2](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)

## Accessibility settings

> TODO i.e. three finger drag, tap to click(?)

Settings stored in a SQLite database, https://github.com/jacobsalmela/tccutil

## User specific apps

Some time was spent attempting to install user-specific apps, with some apps common to more than one user.

__tl;dr__
It's more effort than it's worth. Subsequent user-specific apps need symlinking from Homebrew source (ie /opt/homebrew/Caskroom/<APP_NAME>/<VERSION>).

Here's a GitHub discussion involving Homebrew's author covering [application symlinks and multi-users](https://github.com/Homebrew/homebrew-cask/issues/11584).

## Inspiration

Articles:

+ [MacOS Configuration dotFile](https://wilsonmar.github.io/dotfiles/)
+ [Dotfiles: automating macOS system configuration](https://kalis.me/dotfiles-automating-macos-system-configuration/)
+ [Getting Started with Dotfiles](https://driesvints.com/blog/getting-started-with-dotfiles/)
+ [Change macOS user preferences via command line](https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/)
+ [Dotfiles Are Meant to Be Forked](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)

Repos:

+ [mathiasbynens / dotfiles](https://github.com/mathiasbynens/dotfiles)
+ [kentcdodds / dotfiles](https://github.com/kentcdodds/dotfiles)
+ [rkalis / dotfiles](https://github.com/rkalis/dotfiles)
+ [pawelgrzybek / dotfiles](https://github.com/pawelgrzybek/dotfiles)
+ [driesvints / dotfiles](https://github.com/driesvints/dotfiles)
+ [kevinSuttle / macOS-Defaults](https://github.com/kevinSuttle/macOS-Defaults)
+ [tarranjones / macOS-defaults](https://github.com/tarranjones/macOS-defaults)
+ [lra / mackup](https://github.com/lra/mackup)

Websites:

+ [macOS defaults](https://macos-defaults.com/)
