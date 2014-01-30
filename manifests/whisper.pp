# = Class: graphite::whisper
#
# Description of graphite::whisper
#
# == Actions:
#
# Installs the whisper package.
#
# == Todo:
#
# * Update documentation
#
class graphite::whisper {

  anchor { 'graphite::whisper::begin': }
  anchor { 'graphite::whisper::end': }

  include graphite::whisper::package

  Anchor['graphite::whisper::begin'] ->
    Class['graphite::whisper::package'] ->
    Anchor['graphite::whisper::end']

}

