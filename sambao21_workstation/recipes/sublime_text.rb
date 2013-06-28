include_recipe 'pivotal_workstation::sublime_text'

sublime_package_path = ["#{WS_HOME}/Library/Application Support/Sublime Text 2", "Packages"]
sublime_user_path = sublime_package_path.dup << "User"

begin
  t = resources(:template => File.expand_path("Preferences.sublime-settings", File.join(sublime_user_path)))
  t.cookbook "sambao21_workstation"
end

cookbook_file File.expand_path("Auto Encoding for Ruby.sublime-settings", File.join(sublime_user_path)) do
  source "sublime_text-Auto Encoding for Ruby.sublime-settings"
  owner node['current_user']
  mode "0600"
end

template File.expand_path("Ruby.sublime-build", File.join(sublime_user_path)) do
  source "Ruby.sublime-build.erb"
  owner node['current_user']
  mode "0600"
end

cookbook_file File.expand_path("CTags.sublime-settings", File.join(sublime_user_path)) do
  source "CTags.sublime-settings"
  owner node['current_user']
  mode "0600"
end
