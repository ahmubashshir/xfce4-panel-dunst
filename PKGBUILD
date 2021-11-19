pkgname=xfce4-panel-dunst
pkgver=0.0.1
pkgrel=1
pkgdesc="Xfce4 panel plugin for dunst"
arch=('i686' 'x86_64')
depends=( 'xfce4-panel' 'dunst')
makedepends=( 'vala' 'xfce4-panel' 'meson' )

prepare() {
	rm -rf "${startdir}/install"
}
build() {
	arch-meson "${startdir}" "${startdir}/install"
	ninja -C "${startdir}/install"
}

package() {
	DESTDIR="$pkgdir/" ninja -C "${startdir}/install" install
	rm -r "$pkgdir"/usr/lib/xfce4/panel/plugins/dunst*
	mv "$pkgdir"/usr/lib/xfce4/panel/plugins/libdunst.so{.$pkgver,}
	rm "$pkgdir"/usr/lib/xfce4/panel/plugins/libdunst.so.*
}
