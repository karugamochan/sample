# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "reserve_app"
set :repo_url, "git@bitbucket.org:daueusa/reserve_app.git"

set :branch, 'master'
set :deploy_to, '/var/www/app/reserve_app'
set :scm, :git
set :log_level, :debug
set :pty, true

set :bundle_binstubs, nil
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets bundle public/system public/assets}
set :default_env, { path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH" }
set :keep_releases, 5

namespace :deploy do
  after :finishing, 'deploy:cleanup'
end