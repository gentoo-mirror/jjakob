# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit savedconfig xdg

DESCRIPTION='a fast, lightweight, vim-like browser based on webkit'
HOMEPAGE='http://fanglingsu.github.io/vimb/'

SRC_URI="https://github.com/fanglingsu/vimb/archive/refs/tags/${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE='GPL-3'
SLOT='3'
KEYWORDS='~amd64'
IUSE='savedconfig'

RDEPEND='
	x11-libs/gtk+:3
	<net-libs/webkit-gtk-2.47:4.1
	net-libs/libsoup:3.0
	virtual/libc
	dev-libs/glib:2
'
DEPEND="
	${RDEPEND}
"
BDEPEND="
	virtual/pkgconfig
"

src_prepare() {
	default
	restore_config config.def.h

	sed -i -e "/^version = /c\\version = ${PVR}${MY_COMMIT:+"+git${MY_COMMIT:0:8}"}" Makefile
}

src_compile() {
	emake PREFIX="/usr"
}

src_install() {
	emake PREFIX="/usr" DESTDIR="${D}" install
	save_config src/config.def.h
}
