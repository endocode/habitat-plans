pkg_name=drupal
pkg_origin=endocode
pkg_version="8.3.2"
pkg_maintainer="Endocode Habitat Team <habitat@endocode.com>"
pkg_license=('gplv2+')
pkg_source="https://ftp.drupal.org/files/projects/$pkg_name-$pkg_version.tar.gz"
pkg_shasum="5afab2a639d8651cb009835a390e0e7d1322d39989dfe20f6be5a79a0b946b1e"
pkg_deps=(core/nginx core/php)
pkg_svc_user="root"
pkg_svc_run="php-fpm --nodaemonize"

do_build() {
    return 0
}

do_install() {
    cp -r $HAB_CACHE_SRC_PATH/$pkg_dirname/* $pkg_prefix/drupal/
}
