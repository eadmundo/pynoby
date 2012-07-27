class rvm {
  exec { ['vagrant-rvm']:
    path    => '/usr/bin:/usr/sbin:/bin',
    command => 'curl -L https://get.rvm.io | sudo bash -s stable',
    creates => '/usr/local/lib/rvm',
    require => [
      Class['ruby'],
      Class['rvm::dependencies'],
    ],
  }
/*
  package { ['ruby-rvm']:
    ensure => installed,
    require => [
      Class['ruby'],
      Class['rvm::dependencies'],
    ],
  }
*/
}