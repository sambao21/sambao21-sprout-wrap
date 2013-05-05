# coding: UTF-8

cookbook_file "#{WS_HOME}/.gitignore_global" do
  source "dotgitignore_global"
  owner WS_USER
  mode "0600"
end
