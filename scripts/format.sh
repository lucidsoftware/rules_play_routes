#!/usr/bin/env bash

if [ "$1" != check ]; then
    bazel run buildifier
else
    bazel run buildifier_check
fi
