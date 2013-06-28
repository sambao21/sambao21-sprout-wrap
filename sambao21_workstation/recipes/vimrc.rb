cookbook_file "#{node['sprout']['home']}/.vimrc" do
  source "dotvimrc"
  owner node['current_user']
  mode "0600"
end
