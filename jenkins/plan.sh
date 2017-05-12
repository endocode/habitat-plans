pkg_origin=endocode
pkg_name=jenkins
pkg_version=2.46.2
pkg_maintainer="Endocode Habitat Team <habitat@endocode.com>"
pkg_license=('mit')
pkg_upstream_url=https://jenkins.io/
pkg_source=http://mirrors.jenkins.io/war-stable/${pkg_version}/${pkg_name}.war
pkg_shasum="aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7"
pkg_deps=(core/jdk8)
pkg_svc_user="root"

do_unpack() {
    return 0
}

do_build() {
    return 0
}

do_install() {
    cp ${HAB_CACHE_SRC_PATH}/${pkg_filename} ${pkg_prefix}/jenkins.war
}
