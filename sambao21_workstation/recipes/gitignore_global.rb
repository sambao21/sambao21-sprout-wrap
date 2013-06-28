cookbook_file "#{WS_HOME}/.gitignore_global" do
  source "dotgitignore_global"
  owner node['current_user']
  mode "0600"
end
