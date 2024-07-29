#!/bin/sh -e
cd "$(dirname "$0")"

bazel run @unpinned_play_routes_test//:pin

bazel run @unpinned_play_2_5_routes_compiler_cli//:pin
bazel run @unpinned_play_2_6_routes_compiler_cli//:pin
bazel run @unpinned_play_2_7_routes_compiler_cli//:pin
bazel run @unpinned_play_2_8__2_12_routes_compiler_cli//:pin
bazel run @unpinned_play_2_8__2_13_routes_compiler_cli//:pin
bazel run @unpinned_play_2_9_routes_compiler_cli//:pin
bazel run @unpinned_play_3_0__2_13_routes_compiler_cli//:pin
#bazel run @unpinned_play_3_0__3_routes_compiler_cli//:pin
