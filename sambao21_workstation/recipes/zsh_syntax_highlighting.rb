directory "#{node['sprout']['home']}/.oh-my-zsh/custom/plugins/" do
  action :create
  owner node['current_user']
  mode "0700"
  only_if { !::File.exists?("#{node['sprout']['home']}/.oh-my-zsh/custom/plugins") }
end

execute "install zsh-syntax-highlighting" do
  command "git clone git://github.com/zsh-users/zsh-syntax-highlighting.git"
  user node['current_user']
  cwd "#{node['sprout']['home']}/.oh-my-zsh/custom/plugins"
  not_if { ::File.exists?("#{node['sprout']['home']}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting") }
end
