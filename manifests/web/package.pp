# Class: graphite::web::package
#
class graphite::web::package inherits graphite::web::params {

  exec { 'install-django':
    logoutput => true,
    command   => '/usr/local/bin/pip install -U django==1.5.2',
    unless    => '/usr/local/bin/pip freeze | /bin/grep -i django==1.5.2',
    require   => Package['python-pip'],
  }

  package { $package_name:
    ensure   => latest,
    provider => 'pip',
    require  => Exec['install-django'],
  }

}
