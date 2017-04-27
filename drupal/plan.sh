pkg_name=drupal
pkg_origin=endocode
pkg_version="8.3.1"
pkg_maintainer="Endocode Habitat Team <habitat@endocode.com>"
pkg_license=('gplv2+')
pkg_source="https://ftp.drupal.org/files/projects/${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="ea855ac6cc6dcc05494c93e6cf65dfe0a8006135ecd21bf6f0f345e7d5222c10"
pkg_deps=(core/httpd core/php)
pkg_description="Drupal is content management software. It's used to make many of the websites and applications you use every day."
pkg_upstream_url="https://www.drupal.org"

do_build() {
    return 0
}

do_install() {
    cp -r ${HAB_CACHE_SRC_PATH}/* $(hab pkg path core/httpd)/htdocs
}
