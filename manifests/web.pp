# = Class: graphite::web
#
# Installs the graphite webfontend.
#
# == Actions:
#
# Installs packages for graphite web frontend.
#
# == Requires:
#
# Running web server.
#
# == Todo:
#
# * Update documentation
#
class graphite::web (
  $manage_httpd = $::graphite::params::manage_httpd,
  $manage_httpd = $::graphite::params::config_dir,
) {

  anchor { 'graphite::web::begin': }
  anchor { 'graphite::web::end': }

  include graphite::web::params
  include graphite::web::package
  include graphite::web::config
  include graphite::web::service

  Anchor['graphite::web::begin'] ->
  Class['graphite::web::params'] ->
  Class['graphite::web::package'] ->
  Class['graphite::web::config'] ->
  Class['graphite::web::service'] ->
  Anchor['graphite::web::end']

}

