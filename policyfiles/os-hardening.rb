name "os-hardening"

# Where to find external cookbooks:

default_source :supermarket
run_list "linux-initial-config::default"

default['linux-initial-config']['vault_url'] = 'https://localhost:8200'
default['linux-initial-config']['ca_key_name'] = 'trusted-ca-key'
default['linux-initial-config']['ssh_mount_path'] = 'ssh'


