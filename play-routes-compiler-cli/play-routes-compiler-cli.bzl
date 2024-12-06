load("@rules_java//java:java_binary.bzl", "java_binary")
load("@rules_jvm_external//:defs.bzl", "java_export")
load("@rules_scala_annex//rules:scala.bzl", "scala_library")
load("//:versions.bzl", "play_version")

def generate_play_routes_compiler_targets(scala_version):
    # For example 2.13 -> 2_13 or 2-13
    scala_version_underscore = scala_version.replace(".", "_")
    scala_version_dash = scala_version.replace(".", "-")
    if scala_version.startswith("3"):
        scala_library_target = "@play_routes_compiler_cli_{}//:org_scala_lang_scala3_library_3".format(scala_version_underscore)
    else:
        scala_library_target = "@play_routes_compiler_cli_{}//:org_scala_lang_scala_library".format(scala_version_underscore)

    main_class = "rulesplayroutes.routes.CommandLinePlayRoutesCompiler"

    scala_library(
        name = "play-routes-compiler-lib-{}".format(scala_version_dash),
        srcs = native.glob(["*.scala"]),
        scalacopts = ["-Xfatal-warnings"],
        visibility = ["//visibility:public"],
        deps_used_whitelist = [
            scala_library_target,
            "@play_routes_compiler_cli_{}//:com_google_protobuf_protobuf_java".format(scala_version_underscore),
        ],
        deps = [
            scala_library_target,
            "//third_party/bazel/src/java_tools/buildjar/java/com/google/devtools/build/buildjar/jarhelper",
            "@play_routes_compiler_cli_{}//:com_github_scopt_scopt_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_compiler_cli_{}//:com_google_protobuf_protobuf_java".format(scala_version_underscore),
            "@play_routes_compiler_cli_{}//:org_playframework_play_routes_compiler_{}".format(scala_version_underscore, scala_version_underscore),
            "@rules_scala_annex//src/main/scala/higherkindness/rules_scala/common/error",
            "@rules_scala_annex//src/main/scala/higherkindness/rules_scala/common/interrupt",
            "@rules_scala_annex//src/main/scala/higherkindness/rules_scala/common/sandbox",
            "@rules_scala_annex//src/main/scala/higherkindness/rules_scala/common/worker",
        ],
        scala_toolchain_name = "zinc_{}".format(scala_version_underscore),
    )

    java_binary(
        name = "play-routes-compiler-cli-{}".format(scala_version_dash),
        main_class = main_class,
        visibility = ["//visibility:public"],
        runtime_deps = [":play-routes-compiler-lib-{}".format(scala_version_dash)],
    )

    java_export(
        name = "exported-play-routes-compiler-{}".format(scala_version_dash),
        maven_coordinates = "com.lucidchart:play-routes-compiler-cli_{}:{}".format(scala_version_underscore, play_version),
        manifest_entries = {
            "Main-Class": main_class,
        },
        excluded_workspaces = {
            "play_routes_compiler_cli_{}".format(scala_version_underscore): None,
            "com_google_protobuf": None,
            "protobuf": None,
        },
        pom_template = "pom.xml.tmpl",
        deps = [
            ":play-routes-compiler-lib-{}".format(scala_version_dash),
        ],
        srcs = ["Foo.java"],
    )
