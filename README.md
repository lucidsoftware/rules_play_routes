# Play Framework Routes File Rules for Bazel

| Travis | Stardoc
| --- | --- |
| [![Build Status](https://travis-ci.org/lucidsoftware/rules_play_routes.svg?branch=master)](https://travis-ci.org/lucidsoftware/rules_play_routes/branches) | [Stardoc](docs/stardoc/play-routes.md) |

## Overview
`rules_play_routes` compiles [Play Framework routes files](https://www.playframework.com/documentation/latest/ScalaRouting) templates to [Scala](http://www.scala-lang.org/), so they can be used with [`bazelbuild/rules_scala`](https://github.com/bazelbuild/rules_scala) and [`higherkindness/rules_scala`](https://github.com/higherkindness/rules_scala).

Simple Core API: [play_routes](docs/stardoc/play-routes.md)

For more information about the Play Framework, see [the Play documentation](https://www.playframework.com/documentation/latest).

## Installation
Create a file called at the top of your repository named `WORKSPACE` and add the following snippet to it.

```python
# update version as needed
rules_play_routes_version = "0fd1c385541a2f537ecb8e44bb5d740d554370a4"
http_archive(
  name = "io_bazel_rules_play_routes",
  sha256 = "27f95b3c798612b5ab380611161ebe315426c550aadbe6037bf15e2edec8f012",
  strip_prefix = "rules_play_routes-{}".format(rules_play_routes_version),
  type = "zip",
  url = "https://github.com/lucidsoftware/rules_play_routes/archive/{}.zip".format(rules_play_routes_version),
)

RULES_JVM_EXTERNAL_TAG = "2.5"
http_archive(
    name = "rules_jvm_external",
    sha256 = "249e8129914be6d987ca57754516be35a14ea866c616041ff0cd32ea94d2f3a1",
    strip_prefix = "rules_jvm_external-{}".format(RULES_JVM_EXTERNAL_TAG),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(RULES_JVM_EXTERNAL_TAG),
)

load("@io_bazel_rules_play_routes//:workspace.bzl", "play_routes_repositories")
play_routes_repositories()
load("@play_routes//:defs.bzl", play_routes_pinned_maven_install = "pinned_maven_install")
play_routes_pinned_maven_install()
```

This installs `rules_play_routes` to your `WORKSPACE` at the specified commit. Update the commit as needed.

## Usage
The `play_routes` rule compiles Play routes files to a source jar that can be used with the `rules_scala` rules. For example,

```python
play_routes(
  name = "play-routes",
  srcs = ["conf/routes"] + glob(["conf/*.routes"]),
  include_play_imports = True,
  generate_reverse_router = True,
  routes_imports = [...],
)

scala_binary(
  name = "foo-service",
  srcs = glob(["app/**/*.scala"]) + [":play-routes"],
  main_class = "foo.server.RunServer",
  deps = [...]
  )
)
```

See the [Stardoc documentation](docs/stardoc/play-routes.md) for the full list of options for `play_routes`.

### Use with the Play Framework
`play_routes` can be used with [`rules_twirl`](https://github.com/lucidsoftware/rules_twirl) to run a Play Framework Service. For example

```python
twirl_templates(
  name = "twirl-templates",
  source_directory = "app",
  include_play_imports = True,
  srcs = glob(["app/**/*.scala.html"])
    + glob(["app/**/*.scala.xml"])
    + glob(["app/**/*.scala.js"])
    + glob(["app/**/*.scala.txt"]),
  additional_imports = [...],
)

play_routes(
  name = "play-routes",
  srcs = ["conf/routes"] + glob(["conf/*.routes"]),
  include_play_imports = True,
  generate_reverse_router = True,
  routes_imports = [...],
)

scala_binary(
  name = "foo-service",
  srcs = glob(["app/**/*.scala"])  + [":twirl-templates", ":play-routes"],
  visibility = ["//visibility:public"],
  main_class = "play.core.server.ProdServerStart",
  resources = ["conf/logback.xml"] + glob(["conf/resources/**/*"]),
  resource_strip_prefix = native.package_name(),
  classpath_resources = ["conf/application.conf"],
  jvm_flags = [
  	"-Dhttp.port=9000",
  	"-Dapplication.name=foo-service",
  ],
  deps = [...],
)
```

## Development
### Command Line Play Routes Compiler
This project consists of the Play routes Bazel rules and a command line Play routes compiler compiler. The command line compiler can be built with
```bash
bazel build //play-routes-compiler
```

It can be run with
```bash
bazel run //play-routes-compiler
```

### Testing
All tests can be run using

```bash
test/run_all_tests.sh
```

They can also be run using
```bash
bazel test //test/...
```

### Updating Third Party Dependencies
We use [rules_jvm_external](https://github.com/bazelbuild/rules_jvm_external) to import third party dependencies.

To make changes to the dependencies, simply update `maven_install` in the appropriate `workspace.bzl` file (`workspace.bzl` for the main `rules_play_routes` implementation or `test_workspace.bzl` for the tests), and then update the dependencies json file used by `rules_jvm_external` by running the following script:
```bash
scripts/gen-deps.sh
```
Never modify the dependencies json file directly.

### Updating Stardoc
Before pushing your changes, make sure you update the documentation by running the following script:
```bash
scripts/gen-docs.sh
```
Failure to do so will result in CI failing.
