dmg_package "Google Voice And Video" do
  volumes_dir "GoogleVoiceAndVideoAccelSetup_3.16.0.12200"
  source "https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg"
  checksum "428830e27e2b9e34dd570574f6ee03fd1194eb9d45e20b1945a1c3c72498092e"
  owner WS_USER
  type "pkg"
  package_id "com.google.pkg.GoogleVoiceAndVideo"
  action :install
end
