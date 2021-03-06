################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="giflib"
PKG_VERSION="5.1.4"
PKG_SHA256="df27ec3ff24671f80b29e6ab1c4971059c14ac3db95406884fc26574631ba8d5"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://giflib.sourceforge.net/"
PKG_URL="$SOURCEFORGE_SRC/giflib/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_HOST="zlib:host"
PKG_DEPENDS_TARGET="toolchain zlib"
PKG_SECTION="graphics"
PKG_SHORTDESC="giflib: giflib service library"
PKG_LONGDESC="giflib: giflib service library"

PKG_CONFIGURE_OPTS_HOST="--disable-shared --enable-static"
PKG_CONFIGURE_OPTS_TARGET="--with-sysroot=$SYSROOT_PREFIX"

post_makeinstall_target() {
  rm -rf $INSTALL/usr/bin
}
