# Class: graphite::carbon::config
#
class graphite::carbon::config inherits graphite::carbon::params {
  include concat::setup

  concat { "${config_dir}/storage-schemas.conf":
    group  => '0',
    mode   => '0644',
    owner  => '0',
    notify => Service['carbon-cache'];
  }

  concat::fragment { 'header':
    target => "${config_dir}/storage-schemas.conf",
    order  => 0,
    source => 'puppet:///modules/graphite/storage-schemas.conf',
  }

  # Fixme: needs abstraction
  file { "${config_dir}/carbon.conf":
    ensure  => present,
    mode    => '0640',
    content => template("graphite/carbon.conf.${::osfamily}.erb"),
  }

  file { '/opt/graphite/storage':
    ensure  => directory,
    recurse => true,
    owner   => $www_user,
    group   => $www_group,
    before  => Service[$service_name],
  }

  file { '/etc/init.d/carbon-cache':
    ensure  => present,
    mode    => '0755',
    owner   => '0',
    group   => '0',
    content => template('graphite/carbon-cache_Debian.init'),
    before  => Service[$service_name],
  }

}

