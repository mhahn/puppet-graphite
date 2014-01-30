# Class: graphite::carbon::service
#
class graphite::carbon::service inherits graphite::carbon::params {

  service { $service_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }

}

