#!/bin/bash
set -euxo pipefail

cd "$(dirname "$0")"

bazel run @unpinned_play_routes_compiler_cli_3//:pin
bazel run @unpinned_play_routes_compiler_cli_2_13//:pin
bazel run @unpinned_play_routes_test_3//:pin
bazel run @unpinned_play_routes_test_2_13//:pin
