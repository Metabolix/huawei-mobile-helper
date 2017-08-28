pkgname=huawei-mobile-helper
pkgver=1.0
pkgrel=1
pkgdesc="Auto-connect for non-HiLink Huawei USB dongles"
arch=('any')
license=('GPL')
depends=('udev' 'systemd' 'bash')
source=(
  huawei-mobile-helper
  huawei-mobile-helper.rules
  huawei-mobile-helper.service
  huawei-mobile-helper.conf
  README.md
  install.sh
)
sha1sums=(${source[@]/*/SKIP})

pkgver() {
  git describe --long | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

package() {
  sh install.sh "$pkgdir"
}
