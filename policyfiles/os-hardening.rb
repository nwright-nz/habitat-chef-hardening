name "os-hardening"

# Where to find external cookbooks:

default_source :supermarket
run_list "os-hardening::default"

cookbook 'os-hardening', '~> 3.2.0'
