unless File.exists?("/Applications/Spotify.app")
  remote_file "#{Chef::Config[:file_cache_path]}/SpotifyApp.zip" do
    source "http://download.spotify.com/SpotifyInstaller.zip"
    owner WS_USER
    #checksum "4e654c6571d89d1d940fb19f1a46f1a01fbea6ed279649d2bd78dfef29c6621d"
  end

  execute "unzip SpotifyApp.zip" do
    command "unzip -o #{Chef::Config[:file_cache_path]}/SpotifyApp.zip -d #{Chef::Config[:file_cache_path]}/"
    user WS_USER
  end

  execute "Install Spotify.app to /Applications" do
    command "open #{Chef::Config[:file_cache_path]}/Install\\ Spotify.app"
    user WS_USER
    group "admin"
  end

#  ruby_block "test to see if Spotify.app was installed" do
#    block do
#      raise "Spotify.app was not installed" unless File.exists?("/Applications/Spotify.app")
#    end
#  end
end
