# Class: graphite::web::package
#
class graphite::web::package inherits graphite::web::params {

  package { $package_name:
    ensure   => latest,
    provider => 'pip',
    require  => Package['python-pip'],
  }

}

