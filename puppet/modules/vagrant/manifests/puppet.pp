class vagrant::puppet::augeas {
  package { [ 'libaugeas-dev', 'pkg-config', 'build-essential' ]:
    ensure => installed,
  }
  package { 'ruby-augeas':
    ensure   => installed,
    provider => gem,
    require  => [
      Package['libaugeas-dev'],
      Package['pkg-config'],
      Package['build-essential'],
    ],
  }
}
