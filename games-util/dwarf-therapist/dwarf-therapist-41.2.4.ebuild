# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Dwarf management tool for Dwarf Fortress"
HOMEPAGE="https://github.com/Dwarf-Therapist/Dwarf-Therapist"
SRC_URI="https://github.com/Dwarf-Therapist/Dwarf-Therapist/archive/v${PV}.tar.gz -> ${PN}-v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="-* ~amd64"

RDEPEND="
	dev-qt/qtcore:5
	dev-qt/qtconcurrent:5
	dev-qt/qtdeclarative:5
	dev-qt/qtgui:5
	dev-qt/qtnetwork:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/Dwarf-Therapist-${PV}"

src_configure() {
	local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX=/opt/${PN}
	)
	cmake_src_configure
}
