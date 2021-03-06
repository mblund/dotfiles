#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

#zsh
brew install zsh
brew install zsh-completions

chsh -s /bin/zsh
rm -f ~/.zcompdump
chmod go-w '/usr/local/share/zsh'
compinit

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
#brew install openssh
#brew install screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
#brew install imagemagick --with-webp
brew install lynx
brew install p7zip
#brew install pigz
brew install pv
brew install rename
brew install ssh-copy-id
brew install tree
brew install colordiff

brew install sbt
brew install awscli
brew install aws-sam-cli

brew install python

#cask
brew cask install google-chrome
#brew cask install intellij-idea-ce
#brew cask install tunnelblick
#brew cask install karabiner-elements
#brew cask install spotify
#brew cask install slack

# https://github.com/AdoptOpenJDK/homebrew-openjdk
brew tap AdoptOpenJDK/openjdk
brew cask adoptopenjdk8
brew cask adoptopenjdk11

brew tap buo/cask-upgrade
brew cu
# Remove outdated versions from the cellar.
brew cleanup
