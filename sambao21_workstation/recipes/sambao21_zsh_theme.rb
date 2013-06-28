cookbook_file "#{WS_HOME}/.oh-my-zsh/themes/sambao21.zsh-theme" do
  source "sambao21.zsh-theme"
  user node['current_user']
  mode "0600"
end
