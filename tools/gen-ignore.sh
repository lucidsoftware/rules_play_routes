#!/bin/bash -e
cd "$(dirname "$0")"/..

PACKAGES="$(find -L external-tools -iname BUILD -o -iname BUILD.bazel | xargs -n1 dirname | tr '\n' ,)"

(
    echo '# generated' > tools/ignore.rc
    echo "build --deleted_packages=${PACKAGES%%,}"
    echo "query --deleted_packages=${PACKAGES%%,}"
    echo "test  --deleted_packages=${PACKAGES%%,}"
) >> tools/ignore.rc
