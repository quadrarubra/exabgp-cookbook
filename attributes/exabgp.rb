default['exabgp']['local_as'] = '12345'
default['exabgp']['peer_as'] = '12345'
default['exabgp']['community'] = [0]

default['exabgp']['hold_time'] = 20

default['exabgp']['ipv4']['neighbor'] = '127.0.0.1'
default['exabgp']['ipv4']['anycast'] = '127.0.0.1'
default['exabgp']['ipv4']['enable_static_route'] = true
default['exabgp']['ipv4']['prefix'] = '24'

default['exabgp']['ipv6']['neighbor'] = nil
default['exabgp']['ipv6']['anycast'] = '::1'
default['exabgp']['ipv6']['prefix'] = '48'

default['exabgp']['source_version'] = 'master'
default['exabgp']['bin_path'] = '/usr/local/bin/exabgp'

default['exabgp']['watchdog_flag_file'] = '/tmp/exabgp-announce'
