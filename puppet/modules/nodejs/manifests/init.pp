class nodejs {
  package { [ 'nodejs', 'npm' ]:
    ensure => installed,
  }

  exec { 'nave-install':
    command => '/usr/bin/npm install nave --global',
    creates => '/usr/bin/nave',
    require => Package['npm'],
  }
}
