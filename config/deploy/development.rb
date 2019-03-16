set :stage, :development
role :app, %w{root@133.165.137.234}
role :web, %w{root@133.165.137.234}
role :db, %w{root@133.165.137.234}

server '133.165.137.234',
user: 'root',
roles: %w{web app db},
ssh_options: {
 auth_methods: %w(password),
 password: '********'
}