# Play Framework Routes File Rules for Bazel

| Status | Stardoc
| --- | --- |
| [![Build Status](https://github.com/lucidsoftware/rules_play_routes/workflows/CI/badge.svg)](https://github.com/lucidsoftware/rules_play_routes/actions) | [Stardoc](docs/stardoc/play-routes.md) |

## Overview
`rules_play_routes` compiles [Play Framework routes files](https://www.playframework.com/documentation/latest/ScalaRouting) templates to [Scala](http://www.scala-lang.org/), so they can be used with [`bazelbuild/rules_scala`](https://github.com/bazelbuild/rules_scala) and [`higherkindness/rules_scala`](https://github.com/higherkindness/rules_scala).

Simple Core API: [play_routes](docs/stardoc/play-routes.md)

For more information about the Play Framework, see [the Play documentation](https://www.playframework.com/documentation/latest).

## Installation
Create a file at the top of your repository named `WORKSPACE` and add the following snippet to it.

```python
# update version as needed
rules_play_routes_version = "bfaca5f186f2c3b989c80fd00f37a53b84406b3d"
http_archive(
  name = "io_bazel_rules_play_routes",
  sha256 = "b0ae17af402e88da31fa41b16a6cf1d8eea53d693dd6b4c0c219d421078a2af5",
  strip_prefix = "rules_play_routes-{}".format(rules_play_routes_version),
  type = "zip",
  url = "https://github.com/lucidsoftware/rules_play_routes/archive/{}.zip".format(rules_play_routes_version),
)

RULES_JVM_EXTERNAL_TAG = "2.9"
http_archive(
    name = "rules_jvm_external",
    sha256 = "e5b97a31a3e8feed91636f42e19b11c49487b85e5de2f387c999ea14d77c7f45",
    strip_prefix = "rules_jvm_external-{}".format(RULES_JVM_EXTERNAL_TAG),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(RULES_JVM_EXTERNAL_TAG),
)

load("@io_bazel_rules_play_routes//:workspace.bzl", "play_routes_repositories")
play_routes_repositories("2.7")
load("@play_routes//:defs.bzl", play_routes_pinned_maven_install = "pinned_maven_install")
play_routes_pinned_maven_install()

bind(
  name = "default-play-routes-compiler-cli",
  actual = "@io_bazel_rules_play_routes//default-compiler-clis:scala_2_12_play_2_7"
)

```

This installs `rules_play_routes` to your `WORKSPACE` and binds the default play routes compiler cli the rules will use. Update the commit as needed.

In the above example, the play routes compiler cli for Scala 2.12 and Play 2.7 is used. However, you can specify a different compiler.

We provide 6 default compilers:

- For Scala 2.11 + Play 2.5: `@io_bazel_rules_play_routes//default-compiler-clis:scala_2_11_play_2_5`
- For Scala 2.11 + Play 2.6: `@io_bazel_rules_play_routes//default-compiler-clis:scala_2_11_play_2_6`
- For Scala 2.11 + Play 2.7: `@io_bazel_rules_play_routes//default-compiler-clis:scala_2_11_play_2_7`
- For Scala 2.12 + Play 2.6: `@io_bazel_rules_play_routes//default-compiler-clis:scala_2_12_play_2_6`
- For Scala 2.12 + Play 2.7: `@io_bazel_rules_play_routes//default-compiler-clis:scala_2_12_play_2_7`
- For Scala 2.12 + Play 2.8: `@io_bazel_rules_play_routes//default-compiler-clis:scala_2_12_play_2_8`
- For Scala 2.13 + Play 2.8: `@io_bazel_rules_play_routes//default-compiler-clis:scala_2_13_play_2_8`

To bind one of the default compilers, simply specify the correct Play version in the call to `play_routes_repositories` and update the bind statement:
```python
play_routes_repositories(<Play Version>)
load("@play_routes//:defs.bzl", play_routes_pinned_maven_install = "pinned_maven_install")
play_routes_pinned_maven_install()

bind(
  name = "default-play-routes-compiler-cli",
  actual = <Default Compiler Label>
)
```

Note: play_routes_respositories only needs to know the Play version; there's no special config for the Scala version (just make sure you bind the right compiler label)


## Usage
The `play_routes` rule compiles Play routes files to a source jar that can be used with the `rules_scala` rules. For example,

```python
load("@io_bazel_rules_play_routes//play-routes:play-routes.bzl", "play_routes")

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
