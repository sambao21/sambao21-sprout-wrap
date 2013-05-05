brew "ctags"

cookbook_file "/usr/local/bin/ctags_for_ruby" do
  source "ctags_for_ruby"
  owner WS_USER
  mode "755"
end
