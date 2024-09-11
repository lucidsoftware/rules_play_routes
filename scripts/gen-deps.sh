#!/bin/sh -e
cd "$(dirname "$0")"

bazel run @unpinned_play_routes_test//:pin
bazel run @unpinned_play_routes//:pin
