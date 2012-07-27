class ruby {

  package { ['ruby', 'rubygems']:
    ensure => installed,
    require => Package['ruby-augeas'],
  }

  package { ['bundler'] :
    ensure => installed,
    provider => gem,
    require => Package['ruby-augeas'],
  }

}
