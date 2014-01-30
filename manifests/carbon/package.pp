# Class: graphite::carbon::package
#
class graphite::carbon::package {

  package { 'carbon':
    ensure   => present,
    provider => 'pip',
    require  => Package['python-pip'],
  }

}

