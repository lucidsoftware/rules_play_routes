#!/bin/sh -e
cd "$(dirname "$0")"

bazel run @unpinned_play_routes//:pin
bazel run @unpinned_play_routes_test//:pin

bazel run @unpinned_play_2_5_compilers//:pin
bazel run @unpinned_play_2_6_compilers//:pin
bazel run @unpinned_play_2_7_compilers//:pin