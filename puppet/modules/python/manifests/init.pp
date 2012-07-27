class python {
  package { [ 'python-virtualenv', 'python-dev', 'python-pip',]:
    ensure => 'installed'
  }
}
