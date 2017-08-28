#!/bin/bash
if ! test x"$USER" = x"root"; then
	echo "Warning: you are not root!"
fi
pkgdir="$1"
install -D -m 0755 -t $pkgdir/usr/bin/ huawei-mobile-helper
install -D -m 0644 -t $pkgdir/usr/lib/systemd/system/ huawei-mobile-helper.service
install -D -m 0644 -t $pkgdir/usr/lib/udev/rules.d/ huawei-mobile-helper.rules
install -D -m 0600 -t $pkgdir/etc/ huawei-mobile-helper.conf
install -D -m 0644 -t $pkgdir/usr/share/doc/huawei-mobile-helper/ README.md
