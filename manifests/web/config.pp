# Class: graphite::web::config
#
class graphite::web::config inherits graphite::web::params {

  file { 'local_settings.py':
    ensure    => file,
    path      => "${config_dir}/local_settings.py",
    owner     => 'root',
    group     => 'root',
    mode      => '0644',
    notify    => Service[$service_name],
    content   => template('graphite/local_settings.py.erb'),
    require   => Package[$package_name],
  }

  file { "${config_dir}/apache2.conf":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    notify  => Service[$service_name],
    content => template("graphite/apache2.conf.${::osfamily}.erb");
  }

}
