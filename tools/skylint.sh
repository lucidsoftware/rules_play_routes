#!/usr/bin/env bash

echo "Running Skylint"
skylint_path=src/tools/skylark/java/com/google/devtools/skylark/skylint
bazel build @io_bazel//${skylint_path}:Skylint \
  && find . -type f -name '*.bzl' \
  | xargs "$(bazel info bazel-bin)/external/io_bazel/${skylint_path}/Skylint"