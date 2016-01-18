# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

DESCRIPTION="YouTube browser for SMPlayer"
HOMEPAGE="http://www.smtube.org/"
SRC_URI="http://sourceforge.net/projects/smtube/files/SMTube/${PV}/${PF}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~x86"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-qt/qtcore
	dev-qt/qtscript
	dev-qt/qtwebkit
	dev-util/desktop-file-utils
	x11-themes/hicolor-icon-theme"

src_install(){
	emake DESTDIR=$D install
	dodoc Readme.txt Copying.txt
}
