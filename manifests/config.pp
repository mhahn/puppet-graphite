# = Class: graphite::config
#
class graphite::config inherits graphite::params {

  exec { 'syncdb':
    command => 'python manage.py syncdb',
    path    => '/usr/bin',
    cwd     => $config_dir,
  }

}
