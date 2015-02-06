# config valid only for current version of Capistrano
lock '3.3.5'

set :application, 'hello_world'
set :repo_url, 'git@github.com:Go-Promo/hello_world.git'
set :git_shallow_clone, 1
set :scm_verbose, true
set :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
set :ssh_options, {
  user: 'hello',
  forward_agent: true,
  keys: %w(~/.ssh/id_rsa)
}

set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :keep_releases, 3

after :updated, 'assets:precompile'

namespace :assets do
  desc 'Local assets precompilation'
  task :precompile do
    run_locally do
      rake 'assets:precompile'
    end
  end

  after :precompile, :upload do
    on roles(:web) do
      upload! './public/assets/', "#{release_path}/public/", recursive: true
    end

    run_locally do
      execute 'rm -rf public/assets'
    end
  end
end