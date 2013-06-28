cookbook_file "#{node['sprout']['home']}/.zshrc" do
  source "dotzshrc"
  user node['current_user']
  mode "0600"
end
