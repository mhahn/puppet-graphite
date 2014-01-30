# Class: graphite::web::package
#
class graphite::web::package {

  package { ['graphite-web', 'django-tagging']:
    ensure   => present,
    provider => 'pip',
    require  => Package['python-pip'],
  }

}

