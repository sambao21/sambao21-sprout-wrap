template "#{WS_HOME}/.gitconfig" do
  source "dotgitconfig.erb"
  owner node['current_user']
  mode "0600"
end
