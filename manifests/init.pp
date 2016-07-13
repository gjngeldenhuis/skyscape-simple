class simple {
  class { 'apache': }

  apache::vhost { "${ipaddress}":
    port    => '80',
    docroot => '/var/www/simple',
  }

  file { '/var/www/simple/index.html':
    ensure  => file,
    source  => 'puppet:///modules/simple/index.html',
    require => Apache::Vhost["${ipaddress}"],
  }

}
