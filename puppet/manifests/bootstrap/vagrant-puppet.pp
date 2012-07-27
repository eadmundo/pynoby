#
# Puppet bootstrap
#
# precise64 supplied by vagrant does not ship with Puppet augeas, therefore a
# Puppet bootstrap is required to install ruby-augeas before the main Puppet
# manifest runs.
#

import '../lib/*.pp'

include vagrant
include vagrant::puppet::augeas
