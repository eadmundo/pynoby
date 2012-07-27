class users {
  user { 'vagrant':
    ensure     => 'present',
    groups     => 'rvm',
  }
}
