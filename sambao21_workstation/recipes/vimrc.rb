# coding: UTF-8

cookbook_file "#{WS_HOME}/.vimrc" do
  source "dotvimrc"
  owner WS_USER
  mode "0600"
end
