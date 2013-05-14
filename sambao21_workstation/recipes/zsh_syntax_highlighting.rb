directory "#{WS_HOME}/.oh-my-zsh/custom/plugins/" do
  action :create
  owner WS_USER
  mode "0700"
  only_if { !::File.exists?("#{WS_HOME}/.oh-my-zsh/custom/plugins") }
end

execute "install zsh-syntax-highlighting" do
  command "git clone git://github.com/zsh-users/zsh-syntax-highlighting.git"
  user WS_USER
  cwd "#{WS_HOME}/.oh-my-zsh/custom/plugins"
  not_if { ::File.exists?("#{WS_HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting") }
end
