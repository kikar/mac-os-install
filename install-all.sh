#!/bin/bash

# Don't write last login on terminal
touch ~/.hushlogin

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
  terminalizer \
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
  # # Kiwi for Gmail
  # 986304488

# visual studio code install extentions
code --install-extension MariusAlchimavicius.json-to-ts
code --install-extension akamud.vscode-caniuse
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension eamodio.gitlens
code --install-extension eg2.vscode-npm-script
code --install-extension esbenp.prettier-vscode
code --install-extension GrapeCity.gc-excelviewer
code --install-extension kisstkondoros.vscode-codemetrics
code --install-extension mechatroner.rainbow-csv
code --install-extension mikestead.dotenv
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension Orta.vscode-jest
code --install-extension PeterJausovec.vscode-docker
code --install-extension pnp.polacode
code --install-extension robertohuertasm.vscode-icons
code --install-extension Shan.code-settings-sync
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension WakaTime.vscode-wakatime

# SSH keys
# https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#adding-your-ssh-key-to-the-ssh-agent
# https://gist.github.com/srijanshetty/65e7b9ede7e12743fbd7
