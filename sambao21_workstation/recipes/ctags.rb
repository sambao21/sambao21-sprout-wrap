brew "ctags"

cookbook_file "/usr/local/bin/ctags_for_ruby" do
  source "ctags_for_ruby"
  owner node['current_user']
  mode "755"
end
