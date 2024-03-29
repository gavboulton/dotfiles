# Dotfiles

Clone this repo into the user root.

When setting up a new account, configure username and email for Git.

My dotfiles:
1. Oh My Zsh
1. Software installs
1. macOS preferences

## Oh My Zsh

```
sh oh-my-zsh.sh
```

### Zsh custom plugins

Custom Zsh plugins should not be added to the plugins array. Instead add:

```
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```
above
```
source $ZSH/oh-my-zsh.sh
```

### Zsh Compaudit issues

Ignore Compaudit for subsequent admin users by adding `ZSH_DISABLE_COMPFIX=true` to the top of ~/.zshrc.

Alternatively:

When opening a new terminal window and receving `zsh compinit: insecure files, run compaudit for list.`, permission must be changed for each directory. Symlinked directories must be run on the source, ie:
```
sudo chmod -R root:staff /usr/local/share/zsh
sudo chmod -R root:staff /usr/local/share/zsh/site-functions
sudo chown -R root:staff /usr/local/Cellar
sudo chown -R root:staff /usr/local/Homebrew
```

> These may be affected by the permission changes in software installs

## Software installs

Install from 'main' user account.
```
sh install.sh
```

### Permissions
May need to set Homebrew and Cellar permissions if installs fail
```
sudo chown -R $(whoami) /usr/local/var/homebrew
sudo chown -R $(whoami) /usr/local/Cellar
```

### Clenaup

Run `brew cleanup` for any compinit errors, ie 'compinit:503: no such file or directory: /usr/local/share/zsh/site-functions/_brew_cask'

## macOS preferences

```
./.macos
```

> Make file executable > chmod u+x .macos

## Configgure

```
sh configure.sh
```

### Jump words in iTerm2

[Use ⌥ ← and ⌥→ to jump forwards/backwards words in iTerm2](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)

## Accessibility settings

> TODO i.e. three finger drag, tap to click(?)

Settings stored in a SQLite database, https://github.com/jacobsalmela/tccutil

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
