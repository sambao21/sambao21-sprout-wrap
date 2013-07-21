define :brew_cask, :action => :install do
  include_recipe "sprout-osx-base::homebrew"
  include_recipe "sambao21_workstation::homebrew_cask"
  package = params[:name]

  case params[:action]
  when :install
    sambao21_workstation_brew_cask package
  end
end
