#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -eq 0 ] || [ "$1" != check ]; then
    bazel run buildifier
else
    bazel run buildifier_check
fi
