#!/bin/bash
echo "Installing brew"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor

# Install packages
brew install \
  archey \
  awscli \
  git \
  mariadb@10.2 \
  # mongodb \
  gnupg \
  gpg-agent \
  jq \
  mas \
  nvm \
  redis \
  zsh

# Force to use the git installed by brew
brew link --force git

# Start services
brew services start mariadb@10.2
# brew services start mongodb
brew services start redis

# Set zsh as main terminal
chsh -s /usr/local/bin/zsh
# Install Oh My Zsh
curl -L http://install.ohmyz.sh | sh
# Install syntax highlighting
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zshrc

# Install .app
brew cask install \
  1password \
  alfred \
  appcleaner \
  # backblaze \
  bartender \
  coconutbattery \
  dash \
  discord \
  dropbox \
  firefox \
  google-chrome \
  grandperspective \
  handbrake \
  istat-menus \
  iterm2 \
  little-snitch \
  logitech-options \
  plex-media-server \
  postgres \
  postico \
  postman \
  protonvpn \
  # robo-3t \
  sequel-pro \
  skype \
  spotify \
  # sync \
  teamviewer \
  the-unarchiver \
  # torbrowser \
  # transmission \
  tunnelblick \
  visual-studio-code \
  vlc
