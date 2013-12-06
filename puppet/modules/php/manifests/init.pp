class php {

  Package {
    ensure => present,
  }

  $packages = [
    "php5",
    "php5-cli",
    "php5-mysql",
    "php-pear",
    "php5-dev",
    "php-apc",
    "php5-mcrypt",
    "php5-gd",
    "php5-curl",
  ]

  package { $packages:
      require => Exec['apt-get update']
  }

  exec { "sed -i 's|#|//|' /etc/php5/cli/conf.d/mcrypt.ini":
      require => Package['php5'],
  }

  package { 'libapache2-mod-php5':
    notify => Service['apache2']
  }

  exec { "sed -i 's/upload_max_filesize = .*/upload_max_filesize = 2048M/' /etc/php5/apache2/php.ini":
    require => [ Package['apache2'], Package['php5'], Package['libapache2-mod-php5'] ],
    notify  => Service['apache2'],
  }
}
