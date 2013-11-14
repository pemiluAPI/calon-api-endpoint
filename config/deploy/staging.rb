server "calon-api.stagingapps.net", roles: [:app, :web, :db]

set :ssh_options, {
  user: "william",
  forward_agent: true
}

set :stage, :staging

set :deploy_to, "/home/william/htdocs/#{fetch(:application)}"
set :deploy_via, :remote_cache

set :use_sudo, false
set :keep_releases, 2

set :rbenv_type, :user
set :rbenv_ruby, '2.0.0-p247'

def remote_file_exists?(full_path)
  'true' == capture("if [ -e #{full_path} ]; then echo 'true'; fi").strip
end

namespace :deploy do
  task :start do
    on roles(:all) do
      execute "cd #{current_path};#{fetch(:rbenv_path)}/bin/rbenv exec bundle exec thin -p 3065 -e #{fetch(:stage)} -d start"
    end
  end

  task :restart do
    on roles(:all) do
      if remote_file_exists? "#{current_path}/tmp/pids/thin.pid"
        execute "cd #{current_path};#{fetch(:rbenv_path)}/bin/rbenv exec bundle exec thin -p 3065 -e #{fetch(:stage)} restart"
      end
    end
  end

  task :stop do
    on roles(:all) do
      execute "cd #{current_path};#{fetch(:rbenv_path)}/bin/rbenv exec bundle exec thin -p 3065 -e #{fetch(:stage)} stop"
    end
  end

  task :symlink_config_files do
    on roles(:all) do
      execute "ln -s #{deploy_to}/shared/config/database.yml #{release_path}/config/database.yml"
      execute "mkdir #{release_path}/tmp"
      execute "mkdir #{release_path}/tmp/pids"
    end
  end
end

before "deploy:compile_assets", "deploy:symlink_config_files"
before "deploy:finished", "deploy:restart"
