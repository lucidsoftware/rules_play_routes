#!/bin/sh -e
cd "$(dirname "$0")"

bazel run @unpinned_play_routes//:pin
bazel run @unpinned_play_routes_test//:pin

bazel run @unpinned_play_2_5_routes_compiler_cli//:pin
bazel run @unpinned_play_2_6_routes_compiler_cli//:pin
bazel run @unpinned_play_2_7_routes_compiler_cli//:pin
