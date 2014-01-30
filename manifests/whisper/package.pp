# Class: graphite::whisper::package
#
class graphite::whisper::package {

  package { 'whipser':
    ensure   => present,
    provider => 'pip',
    require  => Package['python-pip'],
  }

}

