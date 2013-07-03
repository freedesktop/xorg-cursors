#!/bin/sh
# this script written by daniel stone <daniel@freedesktop.org>, placed in the
# public domain.

test "x$1" = "x" || . "$1"

printf '# this is a generated file -- do not edit.\n'
printf '\n'
printf 'CURSORFILES = %s\n' "${CURSORS}"
printf 'CLEANFILES = $(CURSORFILES)\n'
printf 'cursor_DATA = $(CURSORFILES)\n'
printf '\n'

for i in $CURSORS; do
	printf '%s:' "${i}"
	for png in $(cut -d" " -f4 ${i}.cfg); do
		EXTRA_DIST="${EXTRA_DIST} ${png}"
		printf ' $(srcdir)/%s' "${png}"
	done
	printf '\n'
	printf '\t$(XCURSORGEN) -p $(srcdir) $(srcdir)/%s.cfg %s\n' \
	    "${i}" "${i}"
	printf '\n'
	EXTRA_DIST="${EXTRA_DIST} ${i}.cfg ${i}.xcf"
done

test "x$DIST" = "x" || EXTRA_DIST="${EXTRA_DIST} ${DIST}"

# the lack of space is intentional.
printf 'EXTRA_DIST =%s\n' "${EXTRA_DIST}"
