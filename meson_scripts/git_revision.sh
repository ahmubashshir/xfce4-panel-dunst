#!/bin/sh
cd "$MESON_SOURCE_ROOT"
if test -e .git; then
	printf '.r%s' "$(git describe --tags --long 2> /dev/null | sed 's/^.*-\([^-]*-g\)/\1/;s/-/./g')"
fi
