ask(:host_ip, nil)
server fetch(:host_ip), user: "deploy", roles: %w{app}, primary: true

set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  user: fetch(:user),
  port: 911
}

set :branch, "master"
