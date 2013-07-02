cookbook_file "/usr/local/bin/make_dot_ruby" do
  source "make_dot_ruby"
  owner node['current_user']
  mode "755"
end
