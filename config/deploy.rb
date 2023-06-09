# capistranoのバージョンを記載。固定のバージョンを利用し続け、バージョン変更によるトラブルを防止する
lock '3.17.2'

# Capistranoのログの表示に利用する
set :application, 'five_level_tagging'

# どのリポジトリからアプリをpullするかを指定する
set :repo_url,  'git@github.com:avocado-don/five_level_tagging.git'

# Gitから参照するブランチ名を「master」から「main」に修正(git archive master → git archive main)
# 2021.06.07のGit仕様変更に、Capistranoが未対応のため
set :branch, "main"

# バージョンが変わっても共通で参照するディレクトリを指定
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '2.6.5'

# どの公開鍵を利用してデプロイするか
set :ssh_options, auth_methods: ['publickey'],
                                  keys: ['~/.ssh/avocado_keypair.pem'] 

# プロセス番号を記載したファイルの場所
set :unicorn_pid, -> { "#{shared_path}/tmp/pids/unicorn.pid" }

# Unicornの設定ファイルの場所
set :unicorn_config_path, -> { "#{current_path}/config/unicorn.rb" }

# Capistranoを通じてデプロイされたアプリの、過去バージョンの保存数(問題が発生しても前のバージョンに戻れる)
set :keep_releases, 5

# デプロイ処理が終わった後、Unicornを再起動するための記述
after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
