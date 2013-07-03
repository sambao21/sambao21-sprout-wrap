osx_defaults "allow clicking by touch" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'Clicking'
  integer node["trackpad_preferences"]["Clicking"]
end

osx_defaults "allow dragging by touch" do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'Dragging'
  integer node["trackpad_preferences"]["Dragging"]
end
