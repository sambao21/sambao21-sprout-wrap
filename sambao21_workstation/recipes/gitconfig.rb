template "#{node['sprout']['home']}/.gitconfig" do
  source "dotgitconfig.erb"
  owner node['current_user']
  mode "0600"
end
