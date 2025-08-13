# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit udev

DESCRIPTION="udev rules for Nitrokey devices"
HOMEPAGE="https://github.com/Nitrokey/nitrokey-udev-rules"

MY_COMMIT=5ffac5d0d9dc776f241a9553be5e92656585bd53
SRC_URI="https://github.com/Nitrokey/${PN}/archive/${MY_COMMIT}.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/${PN}-${MY_COMMIT}"

LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	virtual/udev
	!<app-crypt/libnitrokey-3.8_p20230413-r1
"

src_configure() { :; }

src_compile() { :; }

src_install() {
	udev_dorules 41-nitrokey.rules
}

pkg_postinst() {
	udev_reload
}

pkg_postrm() {
	udev_reload
}
