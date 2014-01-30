# Class: graphite::web::service
#
class graphite::web::service {
  include $graphite::web::params

  $manage_httpd = $graphite::web::params::manage_httpd
  $service_name = $graphite::web::params::service_name

  if $manage_httpd {
    service { $service_name:
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => true,
    }
  }
}

