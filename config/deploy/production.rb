set :rails_env, 'production'

set :deploy_to, '/var/www/hello.nnbs.ru'

set :unicorn_config_path, "#{fetch(:deploy_to)}/current/config/unicorn/production.rb"
set :unicorn_pid, "#{fetch(:deploy_to)}/shared/tmp/pids/unicorn.pid"

# Хост / ip-адрес / ssh-alias
role :app, %w{hello.nnbs.ru}
role :db,  %w{hello.nnbs.ru}, primary: true

namespace :deploy do
  after   "deploy:cleanup",  "deploy:restart"
  after   "deploy:rollback", "deploy:restart"

  desc "Рестарт unicorn"
  task :restart do
    on roles(:app) do
      invoke 'unicorn:restart'
    end
  end

  desc "Запуск unicorn"
  task :start do
    on roles(:app) do
      invoke 'unicorn:start'
    end
  end

  desc "Остановка unicorn"
  task :stop do
    on roles(:app) do
      invoke 'unicorn:stop'
    end
  end
end