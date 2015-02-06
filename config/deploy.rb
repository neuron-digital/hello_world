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