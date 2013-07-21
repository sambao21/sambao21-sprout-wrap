define :brew_cask, :action => :install do
  include_recipe "sprout-osx-base::homebrew"
  include_recipe "sambao21_workstation::homebrew_cask"
  package = params[:name]

  case params[:action]
  when :install
    unless brew_cask_installed?(package)
      execute "brew cask install #{package}" do
        only_if params[:only_if] if params[:only_if]
        not_if params[:not_if] if params[:not_if]
        user params[:user] || node['current_user']
        command "brew cask install #{package}"
      end
    end
end
