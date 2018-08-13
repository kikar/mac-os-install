#!/bin/bash

BASEDIR=$(pushd $(dirname "$0") > /dev/null && pwd && popd > /dev/null)

# Don't write last login on terminal
touch ~/.hushlogin

# Check and install brew
if [ ! `which brew` ]; then
  echo "Command brew not found... Installing";
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew doctor

# Install packages
brew install \
  archey \
  awscli \
  git \
  mariadb \
  mas \
  mongodb \
  nvm \
  redis \
  zsh

# Force to use the git installed by brew
brew link --force git

# Start services
brew services start mariadb
brew services start mongodb
brew services start redis

# Set zsh as main terminal
chsh -s /usr/local/bin/zsh
# Install Oh My Zsh
curl -L http://install.ohmyz.sh | sh
# Install syntax highlighting
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zshrc

# NVM setup
mkdir ~/.nvm

# Install Node.js
nvm install 8
nvm use 8
nvm alias default 8

# Install NPM packages
npm i -g \
  @angular/cli \
  @nestjs/cli \
  localtunnel \
  npm \
  react-native-cli \
  thanks

# Install apps from Mac App Store
mas install \
  # MacFamilyTree 8
  1037755919 \
  # Telegram
  946399090 \
  # Microsoft Remote Desktop
  715768417 \
  # Paste
  967805235 \
  # Reeder
  880001334 \
  # WhatsApp
  1147396723 \
  # Kiwi for Gmail
  986304488

# Install .app
brew cask install \
  1password \
  alfred \
  appcleaner \
  bartender \
  coconutbattery \
  dash \
  discord \
  docker \
  dropbox \
  firefox \
  google-chrome \
  grandperspective \
  handbrake \
  istat-menus \
  iterm2 \
  little-snitch \
  homebrew/cask-drivers/logitech-options \
  plex-media-server \
  postgres \
  postman \
  protonvpn \
  robo-3t \
  sequel-pro \
  skype \
  spotify \
  sync \
  teamviewer \
  the-unarchiver \
  torbrowser \
  transmission \
  tunnelblick \
  visual-studio-code \
  vlc

# iTerm2 configuration
cp com.googlecode.iterm2 ~/Library/Preferences/com.googlecode.iterm2.plist
defaults read com.googlecode.iterm2

# Configure home directory
cp -f ${BASEDIR}/home/* ~/

# visual studio code install extentions
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension esbenp.prettier-vscode
code --install-extension felixfbecker.php-intellisense
code --install-extension ipedrazas.kubernetes-snippets
code --install-extension MS-CEINTL.vscode-language-pack-it
code --install-extension ms-vscode.Go
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension PeterJausovec.vscode-docker
code --install-extension rbbit.typescript-hero
code --install-extension robertohuertasm.vscode-icons
code --install-extension steoates.autoimport

# Fonts
cp cp -f ${BASEDIR}/Fonts/* ~/Library/Fonts

# Exclude folders from Spotlight
sudo defaults write /Volumes/Tapuach/.Spotlight-V100/VolumeConfiguration.plist Exclusions -array-add "/Library/Backblaze.bzpkg"
sudo defaults write /Volumes/Tapuach/.Spotlight-V100/VolumeConfiguration.plist Exclusions -array-add "/System/Library/Caches"
sudo defaults write /Volumes/Tapuach/.Spotlight-V100/VolumeConfiguration.plist Exclusions -array-add "/Users/bait/Library/Application Support/CrashReporter"
sudo defaults write /Volumes/Tapuach/.Spotlight-V100/VolumeConfiguration.plist Exclusions -array-add "/Users/bait/Library/Application Support/SyncServices"
sudo defaults write /Volumes/Tapuach/.Spotlight-V100/VolumeConfiguration.plist Exclusions -array-add "/Users/bait/Library/Caches"
sudo defaults write /Volumes/Tapuach/.Spotlight-V100/VolumeConfiguration.plist Exclusions -array-add "/Users/bait/Library/Cookies"
sudo defaults write /Volumes/Tapuach/.Spotlight-V100/VolumeConfiguration.plist Exclusions -array-add "/Users/bait/Library/Logs/Sync"
sudo defaults write /Volumes/Tapuach/.Spotlight-V100/VolumeConfiguration.plist Exclusions -array-add "/Users/bait/Library/Preferences"
sudo defaults write /Volumes/Tapuach/.Spotlight-V100/VolumeConfiguration.plist Exclusions -array-add "/Users/bait/Library/PubSub"
sudo defaults write /Volumes/Tapuach/.Spotlight-V100/VolumeConfiguration.plist Exclusions -array-add "/Users/bait/Library/Safari"
# Should restart the computer after this or execute the following line
# sudo launchctl stop com.apple.metadata.mds && sudo launchctl start com.apple.metadata.mds
