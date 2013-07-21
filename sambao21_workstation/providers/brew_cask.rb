action :install do
  package = new_resource.name

  def not_installed?(package)
    system("brew cask info #{package} | grep 'Not installed' > /dev/null 2>&1")
  end

  if not_installed?(package)
    execute "brew cask install #{package}" do
      user node['current_user']
      command "brew cask install #{package}"
    end
  end
end
