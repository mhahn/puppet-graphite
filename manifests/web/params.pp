# Class: graphite::web::params
#
class graphite::web::params inherits graphite::params {

  $config_dir = '/opt/graphite/webapp/graphite'
  $service_name = 'apache2'
  $package_name = ['graphite-web', 'django-tagging']

}
