# Class: graphite::whisper::package
#
class graphite::whisper::package {

  package { 'whisper':
    ensure   => present,
    provider => 'pip',
    require  => Package['python-pip'],
  }

}

