dmg_package "Sonos" do
  volumes_dir "Sonos"
  source "http://www.sonos.com/redir/controller_software_mac"
  checksum "d9b722d9287e01338e5e291f22ec0ff5c5203e011dd4fb56cba8e5f8e4849402"
  accept_eula true
  action :install
  owner WS_USER
end
