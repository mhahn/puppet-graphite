# Class: graphite::carbon::package
#
class graphite::carbon::package {

  $package_provider = $::osfamily ? {
    /(?i:Debian)/ => 'pip',
    default       => undef,
  }

  package { 'carbon':
    ensure   => present,
    provider => $package_provider,
    require  => Package['python-pip'],
  }

}

