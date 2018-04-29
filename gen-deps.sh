#!/bin/sh -e
cd "$(dirname "$0")"

rm -fr 3rdparty

external-tools/bazel-deps.sh generate -r "$(pwd)" -s 3rdparty/maven.bzl -d dependencies.yml
external-tools/bazel-deps.sh generate -r "$(pwd)" -s 3rdparty/test_maven.bzl -d test-dependencies.yml
sed -i  '2s:^:java_import_external = None\nscala_import_external = None\n#:' 3rdparty/maven.bzl 3rdparty/test_maven.bzl
