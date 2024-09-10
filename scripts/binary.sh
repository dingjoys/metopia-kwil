#!/usr/bin/env sh
#
# Build a static binary for the host OS/ARCH
#

set -eu

. ./scripts/git_variables
. ./scripts/go_variables

echo "Building $GO_LINKMODE $(basename "${TARGET}")"

(set -x ; go build -trimpath -o "${TARGET}" -tags "${GO_BUILDTAGS}" -ldflags "${GO_LDFLAGS}" -gcflags "${GO_GCFLAGS}" ${GO_RACEFLAG} "${SOURCE}")
