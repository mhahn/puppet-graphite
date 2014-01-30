# Class: graphite::web::package
#
class graphite::web::package inherits graphite::web::params {

  package { 'django':
    ensure   => '1.5.2',
    provider => 'pip',
    require  => Package['python-pip'],
  }

  package { $package_name:
    ensure   => latest,
    provider => 'pip',
    require  => Package['django'],
  }

}
