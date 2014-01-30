# = Class: graphite::config
#
class graphite::config inherits graphite::params {

  if $::osfamily == 'Debian' {
    exec { 'syncdb':
      command => 'python manage.py syncdb',
      path    => '/usr/bin',
      cwd     => $config_dir,
    }
  }
}

