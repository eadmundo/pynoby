class vagrant {
  line { 'line-venv-activate':
    ensure => present,
    file   => '/home/vagrant/.bashrc',
    line   => 'cd /vagrant',
  }
}
