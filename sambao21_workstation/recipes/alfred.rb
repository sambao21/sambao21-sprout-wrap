sprout_osx_apps_homebrew_cask "alfred"

execute 'brew cask alfred link' do
  command 'brew cask alfred link'
  user node['current_user']
  not_if { system("brew cask alfred status | grep 'happily linked' > /dev/null 2>&1") }
end
