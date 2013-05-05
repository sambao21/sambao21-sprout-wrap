cookbook_file "#{WS_HOME}/.zshrc" do
  source "dotzshrc"
  user WS_USER
  mode "0600"
end
