node["global_npm_packages"].each do |package|
  execute "npm install -g #{package}" do
    command "npm install -g #{package}"
    user node['current_user']
  end
end
