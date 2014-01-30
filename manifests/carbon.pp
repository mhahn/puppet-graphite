# = Class: graphite::carbon
#
class graphite::carbon {

  anchor { 'graphite::carbon::begin': }
  anchor { 'graphite::carbon::end': }

  include graphite::carbon::params
  include graphite::carbon::package
  include graphite::carbon::config
  include graphite::carbon::service

  Anchor['graphite::carbon::begin'] ->
    Class['graphite::carbon::params'] ->
    Class['graphite::carbon::package'] ->
    Class['graphite::carbon::config'] ->
    Class['graphite::carbon::service'] ->
    Anchor['graphite::carbon::end']

}

