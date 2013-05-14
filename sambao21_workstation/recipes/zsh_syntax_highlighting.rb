execute "install zsh-syntax-highlighting" do
  command "git clone git://github.com/zsh-users/zsh-syntax-highlighting.git"
  user WS_USER
  cwd "#{WS_HOME}/.oh-my-zsh/custom/plugins"
  not_if { ::File.exists?("#{WS_HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting") }
end
