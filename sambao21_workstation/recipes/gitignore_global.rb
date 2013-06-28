cookbook_file "#{node['sprout']['home']}/.gitignore_global" do
  source "dotgitignore_global"
  owner node['current_user']
  mode "0600"
end
