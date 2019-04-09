#!/usr/bin/env bash

echo "Running Skylint"
skylint_path=src/tools/skylark/java/com/google/devtools/skylark/skylint
bazel build @io_bazel//${skylint_path}:Skylint \
  && find "$(bazel info workspace)" -type f -name '*.bzl' -path ./3rdparty -prune \
  -a -not -path "$(bazel info workspace)/external-tools*" \
  | xargs "$(bazel info bazel-bin)/external/io_bazel/${skylint_path}/Skylint"