#!/bin/bash

set -eo pipefail
set -x

BRANCH=${BRANCH:-${BUILDKITE_BRANCH:master}}

echo "--- Building $PROJECT..."
# update ruby tools and possibly jekyll
make install
# build site
make site
# archive it
tar czf site.tar.gz _site/
# upload
buildkite-agent artifact upload site.tar.gz
