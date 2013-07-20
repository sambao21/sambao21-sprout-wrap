class Chef::Recipe
  def brew_cask_installed?(package)
    include_recipe "sprout-osx-base::homebrew"
    installed=(system("brew cask info #{package} > /dev/null 2>&1")
    Chef::Log.debug("brew cask package #{package} " + (installed ? "IS" : "IS NOT") + " installed.")
    installed
  end
end
