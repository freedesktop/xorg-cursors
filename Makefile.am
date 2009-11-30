DISTCHECK_CONFIGURE_FLAGS = --with-cursordir=\$${datadir}/icons

SUBDIRS = handhelds redglass whiteglass

EXTRA_DIST = genmakefile.sh 

dist-hook: ChangeLog INSTALL

.PHONY: ChangeLog INSTALL

INSTALL:
	$(INSTALL_CMD)

ChangeLog:
	$(CHANGELOG_CMD)
