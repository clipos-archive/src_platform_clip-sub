# SPDX-License-Identifier: LGPL-2.1-or-later
# Copyright © 2007-2018 ANSSI. All Rights Reserved.
PKGNAME := ${PROGNAME}-${PROGVER}

PREFIX ?= /

all:
	@echo "Nothing to do here, move along"

install:
	${foreach sub, ${wildcard subs/*}, install -D ${sub} ${DESTDIR}${PREFIX}/lib/clip/${notdir ${sub}} ; }
	install -D files/openssl.cnf ${DESTDIR}/home/etc.users/core/openssl.cnf
