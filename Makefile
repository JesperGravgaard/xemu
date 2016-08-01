## Collection of *simple* emulators of some 8 bits machines using SDL2 library,
## including the Commodore LCD and Commodore 65 too.
##
## Copyright (C)2016 LGB (Gábor Lénárt) <lgblgblgb@gmail.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA


TARGETS = c65 cvic20 clcd cgeos
ARCHS	= native win32 win64



all:
	for t in $(TARGETS) ; do $(MAKE) -C targets/$$t ; done

all-arch:
	for t in $(TARGETS) ; do for a in $(ARCHS) ; do $(MAKE) -C targets/$$t ARCH=$$a ; done ; done

clean:
	for t in $(TARGETS) ; do $(MAKE) -C targets/$$t clean ; done

all-clean:
	for t in $(TARGETS) ; do for a in $(ARCHS) ; do $(MAKE) -C targets/$$t ARCH=$$a clean ; done ; done


.PHONY: all all-arch clean all-clean
