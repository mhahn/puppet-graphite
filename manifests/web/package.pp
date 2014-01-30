# Class: graphite::web::package
#
class graphite::web::package inherits graphite::web::params {

  if $::osfamily == 'RedHat' {
    package { 'bitmap-fonts-compat':
      ensure => present,
      before => Package[$package_name];
    }
  }

  package { $package_name:
    ensure => present;
  }
}

