osx_defaults "Show Hidden Files" do
  domain "com.apple.Finder"
  key "AppleShowAllFiles"
  boolean node["finder_preferences"]["AppleShowAllFiles"]
end

execute "relaunch Finder" do
  command "killall Finder"
end
