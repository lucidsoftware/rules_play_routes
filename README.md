# Play Framework Routes File Rules for Bazel

| Status | Stardoc
| --- | --- |
| [![Build Status](https://github.com/lucidsoftware/rules_play_routes/workflows/CI/badge.svg)](https://github.com/lucidsoftware/rules_play_routes/actions) | [Stardoc](docs/stardoc/play-routes.md) |

## Overview
`rules_play_routes` compiles
[Play Framework routes files](https://www.playframework.com/documentation/latest/ScalaRouting)
templates to [Scala](http://www.scala-lang.org/), so they can be used with
[`bazelbuild/rules_scala`](https://github.com/bazelbuild/rules_scala) and
[`lucidsoftware/rules_scala`](https://github.com/lucidsoftware/rules_scala).

Simple Core API: [play_routes](docs/stardoc/play-routes.md)

For more information about the Play Framework, see
[the Play documentation](https://www.playframework.com/documentation/latest).

## Installation

`rules_play_routes` isn't yet on the [Bazel Central Registry](https://registry.bazel.build/), so
you'll need to pull it in via `archive_override`. Be sure to replace `<COMMIT>` with the
latest commit on `master` and `<INTEGRITY>` with the hash suggested by Bazel after the dependency is
first loaded.

*/MODULE.bazel*

```starlark
bazel_dep(name = "rules_play_routes")

rules_play_routes_version = "<COMMIT>"

archive_override(
    module_name = "rules_play_routes",
    integrity = "<INTEGRITY>",
    strip_prefix = "rules_play_routes-{}".format(rules_play_routes_version),
    urls = ["https://github.com/lucidsoftware/rules_play_routes/archive/refs/heads/{}.zip".format(rules_play_routes_version)],
)
```

By default, the Scala 3 version of the Play routes compiler will be used. To change the default to
Scala 2.13, add the `--@rules_play_routes//play-routes-toolchain=play-routes-2-13` flag to your
`.bazelrc` file.

If you want to use a custom Play routes compiler, you can set up a custom toolchain like so:

*/BUILD.bazel*

```starlark
load("@rules_play_routes//play-routes-toolchain:create-toolchain.bzl", "create_play_routes_toolchain")

create_play_routes_toolchain(
    name = "play-routes-custom",
    play_routes_compiler = "<label of your custom Play routes compiler>",
)
```

Then, register your toolchain with Bazel and set it as the default in your `.bazelrc` file:

*/MODULE.bazel*

```starlark
register_toolchains("//:play-routes-custom")
```

*/.bazelrc*

```
common --@rules_play_routes//play-routes-toolchain=play-routes-custom
```

You can find the available versions of the Twirl Compiler CLI on maven:
https://mvnrepository.com/artifact/com.lucidchart/play-routes-compiler-cli.

## Usage

The `play_routes` rule compiles Play routes files to a source jar that can be used with the
`rules_scala` rules. For example,

```starkark
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
```

### Overriding the default Play routes compiler

To override the default Play routes compiler for a single target, you can change the
`play_routes_toolchain_name` attribute on the `play_routes` target. That attribute can be set to
the name of any `play_routes_toolchain` registered with `play_routes_register_toolchains` (and
created using `create_play_routes_toolchain`). By default `play-routes-3` and `play-routes-2-13` are
valid values.

For example:
```starlark
play_routes(
    name = "play-routes",
    srcs = ["conf/routes"] + glob(["conf/*.routes"]),
    include_play_imports = True,
    generate_reverse_router = True,
    routes_imports = [...],
    play_routes_toolchain_name = "play-routes-2-13",
)
```

See the [Stardoc documentation](docs/stardoc/play-routes.md) for the full list of options for
`play_routes`.

### Use with the Play Framework

`play_routes` can be used with [`rules_twirl`](https://github.com/lucidsoftware/rules_twirl) to run
a Play Framework Service. For example

```starlark
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

```starlark
filegroup(
    name = "public",
    srcs = glob(["**/*"]),
    visibility = ["//visibility:public"],
)
```

If you want to have webjars support
(https://www.playframework.com/documentation/3.0.x/AssetsOverview#WebJars), then check out
https://github.com/gergelyfabian/rules_play_utils.

## Development

### Command Line Play Routes Compiler

This project consists of the Play routes Bazel rules and a command line Play routes compiler. The
command line compiler can be built with
```bash
bazel build //play-routes-compiler-cli:play-routes-compiler-cli-3
```

It can be run with
```bash
bazel run //play-routes-compiler-cli:play-routes-compiler-cli-3
```

There is a 2.13 verison of the routes compiler: `//play-routes-compiler-cli:play-routes-compiler-cli-2-13`

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

We use [rules_jvm_external](https://github.com/bazelbuild/rules_jvm_external) to import
third party dependencies.

To make changes to the dependencies, simply update the appropriate `maven.install` call in
`MODULE.bazel`, and then update the dependencies json file used by `rules_jvm_external` by running
the following script:

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

## Releasing

To release a new version to Maven Central:
 1. Push a tag with this syntax: `P1.P2.P3` where `P1.P2.P3` is the Play version, e.g., `3.0.4`
 2. Once the build completes (including the publish step), find the
    [staging repo in Sonatype](https://oss.sonatype.org/#stagingRepositories) (assuming you're
    signed in and have access to the project)
 3. Verify all the artifacts are on the staging Repository, and then close it through the Sonatype GUI
 4. Once Sonatype's pre-release checks on the repository complete, release it through the Sonatype GUI
 5. Verify the artifact's present in
    [Maven Central](https://search.maven.org/search?q=com.lucidchart) (it can take multiple hours
    for everything to sync)
