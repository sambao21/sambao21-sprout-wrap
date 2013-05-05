# coding: UTF-8

cookbook_file "#{WS_HOME}/.gitconfig" do
  source "dotgitconfig"
  owner WS_USER
  mode "0600"
end
