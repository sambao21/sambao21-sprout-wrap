dmg_package "Google Voice And Video" do
  volumes_dir "GoogleVoiceAndVideoAccelSetup_4.0.3.13724"
  source "https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg"
  owner node['current_user']
  type "pkg"
  package_id "com.google.pkg.GoogleVoiceAndVideo"
  action :install
end
