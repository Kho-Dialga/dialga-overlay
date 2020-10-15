# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Drag and drop source/target for X"
HOMEPAGE="https://github.com/mwh/dragon"
SRC_URI="https://github.com/mwh/dragon/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"

DEPEND="x11-libs/gtk+:3"
RDEPEND="${DEPEND}"
KEYWORDS="~amd64 ~x86"

src_configure() {
	sed -i 's|$(HOME)/.local|${ED}/usr|g' Makefile || die
}
