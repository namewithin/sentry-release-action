#!/bin/sh

set -e
[ -n "$RELEASE_VERSION" ] || export RELEASE_VERSION="${SENTRY_PROJECT}@$(git describe --always --long)"

output=$(
sentry-cli releases new $RELEASE_VERSION
sentry-cli releases set-commits $RELEASE_VERSION
sentry-cli releases deploys $RELEASE_VERSION new -e $ENVIRONMENT
)
echo "$output"
