cookbook_file "#{node['sprout']['home']}/.rvm/gemsets/global.gems" do
  source "rvm_global.gems"
  owner node['current_user']
  mode "0600"
end
