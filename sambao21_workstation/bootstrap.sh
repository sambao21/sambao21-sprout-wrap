#!/bin/bash

pushd `pwd`
if rvm --version 2>/dev/null; then
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
  rvm use 1.9.3
  gem install soloist
else
  sudo gem install soloist
fi

mkdir -p ~/cookbooks; cd ~/cookbooks

cat > soloistrc <<EOF
cookbook_paths:
- $PWD
recipes:
- pivotal_workstation::create_var_chef_cache
- pivotal_workstation::homebrew
- pivotal_workstation::git
- sambao21_workstation::gitignore_global
- sambao21_workstation::gitconfig
- pivotal_workstation::rvm
- pivotal_workstation::gem_setup
- pivotal_workstation::oh_my_zsh
- sambao21_workstation::sambao21_zsh_theme
- sambao21_workstation::zshrc
- pivotal_workstation::node_js
- sambao21_workstation::global_npm_packages
- pivotal_workstation::ack
- sambao21_workstation::ctags
- sambao21_workstation::vimrc
- sambao21_workstation::sublime_text
- sambao21_workstation::iterm2
- sambao21_workstation::google_drive
- sambao21_workstation::spotify
- sambao21_workstation::google_voice_and_video
- pivotal_workstation::firefox
- pivotal_workstation::chrome
- pivotal_workstation::bettertouchtool
- pivotal_workstation::dropbox
- pivotal_workstation::evernote
- pivotal_workstation::sourcetree
- sambao21_workstation::dock_preferences
- sambao21_workstation::active_corners
- sambao21_workstation::sonos
EOF

if [[ -d pivotal_workstation ]]; then
  cd pivotal_workstation && git pull && cd ..
else
  git clone https://github.com/pivotal/pivotal_workstation.git
fi

if [[ -d dmg ]]; then
  cd dmg && git pull && cd ..
else
  git clone https://github.com/opscode-cookbooks/dmg.git
fi

if [[ -d sambao21_workstation ]]; then
  cd sambao21_workstation && git pull && cd ..
else
  git clone https://github.com/sambao21/sambao21_workstation.git
fi

soloist
popd
