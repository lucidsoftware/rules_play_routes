#!/usr/bin/env bash

set -euxo pipefail

bazel test //test:play-routes-compiler-test
bazel test //test:split-forward-reverse-routes-test