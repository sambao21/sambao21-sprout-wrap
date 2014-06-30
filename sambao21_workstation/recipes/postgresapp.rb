#Installs PostgreSQL on a Mac using http://postgresapp.com/
unless File.exists?("/Applications/Postgres.app")
  remote_file "#{Chef::Config[:file_cache_path]}/PostgresApp.zip" do
    source "https://github.com/PostgresApp/PostgresApp/releases/download/9.3.4.2/Postgres-9.3.4.2.zip"
    owner node['current_user']
  end

  execute "unzip PostgresApp.zip" do
    command "unzip #{Chef::Config[:file_cache_path]}/PostgresApp.zip -d #{Chef::Config[:file_cache_path]}/"
    user node['current_user']
  end

  execute "copy Postgres.app to /Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/Postgres.app #{Regexp.escape("/Applications/Postgres.app")}"
    user node['current_user']
    group "admin"
  end

  ruby_block "test to see if Postgres.app was installed" do
    block do
      raise "Postgres.app was not installed" unless File.exists?("/Applications/Postgres.app")
    end
  end
end
