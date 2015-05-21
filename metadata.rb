name 'exabgp'
maintainer 'Aetrion, LLC.'
maintainer_email 'ops@dnsimple.com'
license 'Apache 2.0'
description 'Installs/Configures exabgp'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

supports 'ubuntu', '>= 12.04'

depends 'apt'
depends 'python'
depends 'runit'
