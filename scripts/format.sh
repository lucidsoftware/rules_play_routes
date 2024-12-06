#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -eq 0 ] || [ "$1" != check ]; then
    bazel run //dev:buildifier
else
    bazel run //dev:buildifier_check
fi
