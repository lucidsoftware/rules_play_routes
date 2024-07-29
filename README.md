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
rules_play_routes_version = "TODO"
http_archive(
  name = "rules_play_routes",
  sha256 = "TODO",
  strip_prefix = "rules_play_routes-{}".format(rules_play_routes_version),
  type = "zip",
  url = "https://github.com/lucidsoftware/rules_play_routes/archive/{}.zip".format(rules_play_routes_version),
)

# rules_jvm_external
rules_jvm_external_version = "6.2"

http_archive(
    name = "rules_jvm_external",
    sha256 = "aa39ecd47e16d5870eba817fe71476802bc371fe2724a2ddee565992df55f4af",
    strip_prefix = "rules_jvm_external-{}".format(rules_jvm_external_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.zip".format(rules_jvm_external_version),
)

load("@rules_jvm_external//:repositories.bzl", "rules_jvm_external_deps")
rules_jvm_external_deps()

load("@rules_jvm_external//:setup.bzl", "rules_jvm_external_setup")
rules_jvm_external_setup()

load("@rules_play_routes//:workspace.bzl", "play_routes_repositories")
play_routes_repositories("3.0")
load("@play_routes//:defs.bzl", play_routes_pinned_maven_install = "pinned_maven_install")
play_routes_pinned_maven_install()

bind(
  name = "default-play-routes-compiler-cli",
  actual = "@rules_play_routes//default-compiler-clis:scala_2_13_play_3_0"
)

```

This installs `rules_play_routes` to your `WORKSPACE` and binds the default play routes compiler cli the rules will use. Update the commit as needed.

In the above example, the play routes compiler cli for Scala 2.12 and Play 2.7 is used. However, you can specify a different compiler.

We provide several default compilers:

- For Scala 2.11 + Play 2.5: `@rules_play_routes//default-compiler-clis:scala_2_11_play_2_5`
- For Scala 2.11 + Play 2.6: `@rules_play_routes//default-compiler-clis:scala_2_11_play_2_6`
- For Scala 2.11 + Play 2.7: `@rules_play_routes//default-compiler-clis:scala_2_11_play_2_7`
- For Scala 2.12 + Play 2.6: `@rules_play_routes//default-compiler-clis:scala_2_12_play_2_6`
- For Scala 2.12 + Play 2.7: `@rules_play_routes//default-compiler-clis:scala_2_12_play_2_7`
- For Scala 2.12 + Play 2.8: `@rules_play_routes//default-compiler-clis:scala_2_12_play_2_8`
- For Scala 2.13 + Play 2.8: `@rules_play_routes//default-compiler-clis:scala_2_13_play_2_8`
- For Scala 2.13 + Play 2.9: `@rules_play_routes//default-compiler-clis:scala_2_13_play_2_9`
- For Scala 2.13 + Play 3.0: `@rules_play_routes//default-compiler-clis:scala_2_13_play_3_0`

To bind one of the default compilers, simply specify the correct Play version in the call to `play_routes_repositories` and update the bind statement:
```python
play_routes_repositories(<Play Version>, <Optional Scala Version, see below>)
load("@play_routes//:defs.bzl", play_routes_pinned_maven_install = "pinned_maven_install")
play_routes_pinned_maven_install()

bind(
  name = "default-play-routes-compiler-cli",
  actual = <Default Compiler Label>
)
```

Note: play_routes_respositories by default only needs to know the Play version. By default, there's no special config
for the Scala version (just make sure you bind the right compiler label).

You can optionally include the Scala version, this might be needed for certain versions of Play.

## Usage
The `play_routes` rule compiles Play routes files to a source jar that can be used with the `rules_scala` rules. For example,

```python
load("@rules_play_routes//play-routes:play-routes.bzl", "play_routes")

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
  resources = [
    "conf/logback.xml",
    # To make your static assets work:
    "//public",
  ] + glob(["conf/resources/**/*"]),
  resource_strip_prefix = native.package_name(),
  classpath_resources = ["conf/application.conf"],
  jvm_flags = [
  	"-Dhttp.port=9000",
  	"-Dapplication.name=foo-service",
  ],
  deps = [...],
)
```

For static assets to work, put this into your `public/BUILD` file:

```python
filegroup(
    name = "public",
    srcs = glob(["**/*"]),
    visibility = ["//visibility:public"],
)
```

If you want to have webjars support (https://www.playframework.com/documentation/2.8.1/AssetsOverview#WebJars),
then check out https://github.com/gergelyfabian/rules_play_utils.

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
