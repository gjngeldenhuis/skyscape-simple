class simple {
  class { 'apache': }

  apache::vhost { '192.168.8.137':
    port    => '80',
    docroot => '/var/www/simple',
  }

}
