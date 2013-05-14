template "#{WS_HOME}/.gitconfig" do
  source "dotgitconfig.erb"
  owner WS_USER
  mode "0600"
end
