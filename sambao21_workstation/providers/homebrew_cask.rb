action :install do
  package = new_resource.name

  execute "brew cask install #{package}" do
    only_if { system("brew cask info #{package} | grep 'Not installed' > /dev/null 2>&1") }
    user node['current_user']
    command "brew cask install #{package}"
  end
end
