cookbook_file "#{WS_HOME}/.vimrc" do
  source "dotvimrc"
  owner node['current_user']
  mode "0600"
end
