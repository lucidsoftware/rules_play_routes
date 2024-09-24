#!/usr/bin/env bash

set -euxo pipefail

bazel test //test:play-routes-compiler-test-2-13
bazel test //test:play-routes-compiler-test-3
bazel test //test:split-forward-reverse-routes-test-2-13
bazel test //test:split-forward-reverse-routes-test-3