pkg_name=etcd
pkg_description="Distributed reliable key-value store for the most critical data of a distributed system"
pkg_origin=endocode
pkg_version="v3.1.5"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('Apache-2.0')
pkg_source=https://github.com/coreos/${pkg_name}/releases/download/${pkg_version}/${pkg_name}-${pkg_version}-linux-amd64.tar.gz
pkg_upstream_url=https://github.com/coreos/etcd/releases/
pkg_shasum=812f2a8e28330cb1e127177ff81efaa24f8e57ce22d3cd28799ef1f939f71454
pkg_dirname=${pkg_name}-${pkg_version}-linux-amd64
pkg_deps=()
pkg_build_deps=()
pkg_bin_dirs=(/usr/bin)

pkg_exports=(
  [client-port]=etcd-client-end
  [server-port]=etcd-server-end
)

pkg_exposes=(client-port server-port)

pkg_svc_user="root"

# pkg_svc_group="$pkg_svc_user"

do_begin() {
  return 0
}

do_prepare() {
  return 0
}

do_build() {
  return 0
}

do_check() {
  return 0
}

do_install() {
  mkdir -p "${pkg_prefix}/var/lib/etcd"
  install -v -D "$HAB_CACHE_SRC_PATH/$pkg_dirname/etcd" "$pkg_prefix/usr/bin/etcd"
  install -v -D "$HAB_CACHE_SRC_PATH/$pkg_dirname/etcdctl" "$pkg_prefix/usr/bin/etcdctl"
}
