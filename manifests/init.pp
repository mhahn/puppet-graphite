# = Class: graphite
#
# This module manages graphite
#
# == Sample Usage:
#
#   include graphite
#
# == Todo:
#
# * Implement user creation.
#
class graphite {

  anchor { 'graphite::begin': }
  anchor { 'graphite::end': }

  include graphite::params
  include graphite::carbon
  include graphite::whisper
  include graphite::web
  include graphite::config

  Anchor['graphite::begin'] ->
  Class['graphite::params'] ->
  Class['graphite::carbon'] ->
  Class['graphite::web'] ->
  Class['graphite::config'] ->
  Anchor['graphite::end']

}

