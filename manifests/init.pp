class simple {
  class { 'apache': }

  apache::vhost { '192.168.8.137':
    port    => '80',
    docroot => '/var/www/simple',
  }

  file { '/var/www/simple/index.html':
    ensure  => file,
    source  => 'modules:///simple/index.html',
    require => Apache::Vhost['192.168.8.137'],
  }

}
