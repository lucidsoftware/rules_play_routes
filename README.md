# Play Framework Routes File Rules for Bazel

| Travis | Stardoc
| --- | --- |
| [![Build Status](https://travis-ci.org/lucidsoftware/rules_play_routes.svg)](https://travis-ci.org/lucidsoftware/rules_play_routes) | [Stardoc](http://lucidsoftware.github.io/rules_play_routes/) |

## Overview
`rules_play_routes` compiles [Play Framework routes files](https://www.playframework.com/documentation/latest/ScalaRouting) templates to [Scala](http://www.scala-lang.org/), so they can be used with [`rules_scala`](https://github.com/bazelbuild/rules_scala).

For more information about the Play Framework, see [the Play documentation](https://www.playframework.com/documentation/latest).

## Installation
Create a file called at the top of your repository named `WORKSPACE` and add the following snippet to it.

```python
# update version as needed
rules_play_routes_version = "cba8a4383d81e6519730ba2b0203f74fd2c9b765"
http_archive(
  name = "io_bazel_rules_play_routes",
  url = "https://github.com/lucidsoftware/rules_play_routes/archive/%s.zip"%rules_play_routes_version,
  type = "zip",
  strip_prefix= "rules_play_routes-%s" % rules_play_routes_version
)
```

This installs `rules_play_routes` to your `WORKSPACE` at the specified commit. Update the commit as needed.

## Stardoc Documentation
http://lucidsoftware.github.io/rules_play_routes/

Stardoc is replacing Skydoc and is currently under development. Doc is likely going to look funny for a while.

### Updating Stardoc
Stardoc is automatically updated on build merged into the master branch. To update the documentation, please submit a pull request. The doc will be updated when it is merged.

### Deploying documentation
The Stardoc site for `rules_play_routes` is deployed from the `gh-pages` branch. That branch is deployed with each build of the master branch.

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

See the [Stardoc documentation](https://lucidsoftware.github.io/rules_play_routes/play-routes/play-routes.html#play_routes) for the full list of options for `play_routes`.

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

### CI
The CI config in `tools/bazel.rc` and other options in `.bazelrc.travis` are used during CI builds.

#### Skylint
[Skylint](https://github.com/bazelbuild/bazel/blob/master/site/docs/skylark/skylint.md) is run during CI builds. To run it locally use
```bash
tools/skylint.sh
```