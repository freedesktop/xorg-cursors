SUBDIRS = handhelds redglass whiteglass

EXTRA_DIST = genmakefile.sh ChangeLog

AUTOMAKE_OPTIONS = foreign

dist-hook: ChangeLog

.PHONY: ChangeLog

ChangeLog:
	(GIT_DIR=$(top_srcdir)/.git git-log > .changelog.tmp && mv .changelog.tmp ChangeLog; rm -f .changelog.tmp) || (touch ChangeLog; echo 'git directory not found: installing possibly empty changelog.' >&2)



