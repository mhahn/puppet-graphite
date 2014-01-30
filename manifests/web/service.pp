# Class: graphite::web::service
#
class graphite::web::service inherits graphite::web::params {

  if $manage_httpd {
    service { $service_name:
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => true,
    }
  }
}

