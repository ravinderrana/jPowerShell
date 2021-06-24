# config valid for current version and patch releases of Capistrano
lock ">= 3.4.0"

set :application, "jPowerShell"
set :repo_url, "https://github.com/sanketdpm/jPowerShell.git"
set :user, "deploy"

set :deploy_to, "/var/apps/jPowerShell"

namespace :deploy do

  desc 'Run the mvn command to install jPowerShell to m2'
  task :install_to_m2 do
    on roles(:app) do
      execute "cd #{current_path};mvn install"
    end
  end
  
  after :finishing, :install_to_m2
end