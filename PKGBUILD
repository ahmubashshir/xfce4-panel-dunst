pkgname=xfce4-panel-dunst
pkgver=0.0.1.r0.g24dd22a
pkgrel=1
pkgdesc="Xfce4 panel plugin for dunst"
arch=('i686' 'x86_64')
depends=( 'xfce4-panel' 'dunst')
makedepends=( 'vala' 'xfce4-panel' 'meson' )

pkgver() {
	cd "${startdir}"
    set -o pipefail
    git describe --tags --long 2>/dev/null | sed 's/\([^-]*-g\)/r\1/;s/-/./g' ||
    printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

prepare() {
	rm -rf "${startdir}/install"
}

build() {
	arch-meson "${startdir}" "${startdir}/install" -D "version=$pkgver" -D "soversion=${pkgver%.r*}"
	ninja -C "${startdir}/install"
}

package() {
	DESTDIR="$pkgdir/" ninja -C "${startdir}/install" install
	rm -fr "$pkgdir"/usr/lib/xfce4/panel/plugins/dunst* \
		"$pkgdir"/usr/lib/pkgconfig
	mv "$pkgdir"/usr/lib/xfce4/panel/plugins/libdunst.so{.${pkgver%.r*},}
	rm "$pkgdir"/usr/lib/xfce4/panel/plugins/libdunst.so.*
}
