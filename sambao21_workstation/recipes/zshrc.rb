cookbook_file "#{WS_HOME}/.zshrc" do
  source "dotzshrc"
  user node['current_user']
  mode "0600"
end
