#!/usr/bin/env bash

set -e

bazel test //test:play-routes-compiler-test
