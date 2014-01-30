# Class: graphite::web::params
#
class graphite::web::params {
  $config_dir = $::osfamily ? {
    /(?i:Debian)/ => '/opt/graphite/webapp/graphite',
    /(?i:RedHat)/ => '/etc/graphite-web',
    default       => '/etc/graphite-web',
  }

  $service_name = $::osfamily ? {
    /(?i:Debian)/ => 'apache2',
    /(?i:RedHat)/ => 'httpd',
    default       => 'httpd',
  }

  $package_name = $::osfamily ? {
    /(?i:Debian)/ => [
      'python-django-tagging',
      'python-graphite-web',
    ],
    /(?i:RedHat)/ => 'graphite-web',
    default       => 'graphite-web',
  }

}

