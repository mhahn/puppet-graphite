# Class: graphite::web::package
#
class graphite::web::package inherits graphite::web::params {

  package { $package_name:
    ensure   => present,
    provider => 'pip',
    require  => Package['python-pip'],
  }

}

