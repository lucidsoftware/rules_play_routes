load("@rules_scala_annex//rules:scala.bzl", "scala_library", "scala_test")
load("//play-routes:play-routes.bzl", "play_routes")

def generate_play_routes_test_targets(scala_version):
    # For example 2.13 -> 2-13 or 2_13
    scala_version_dash = scala_version.replace(".", "-")
    scala_version_underscore = scala_version.replace(".", "_")
    scala = "//scala:zinc_{}".format(scala_version_underscore)

    if scala_version == "3":
        play_routes_toolchain_name = "play-routes-3"
    elif scala_version == "2.13":
        play_routes_toolchain_name = "play-routes-2-13"
    else:
        fail("Unsupported Scala version when generating test targets")

    play_routes(
        name = "play-routes-{}".format(scala_version_dash),
        srcs = ["conf/routes"],
        include_play_imports = True,
        play_routes_toolchain_name = play_routes_toolchain_name,
    )

    play_routes(
        name = "play-routes-basic1-{}".format(scala_version_dash),
        srcs = ["conf/basic1.routes"],
        include_play_imports = True,
        play_routes_toolchain_name = play_routes_toolchain_name,
    )

    play_routes(
        name = "play-routes-basic2-{}".format(scala_version_dash),
        srcs = ["conf/basic2.routes"],
        include_play_imports = True,
        play_routes_toolchain_name = play_routes_toolchain_name,
    )

    play_routes(
        name = "play-routes-large-{}".format(scala_version_dash),
        srcs = ["conf/large.routes"],
        include_play_imports = True,
        play_routes_toolchain_name = play_routes_toolchain_name,
    )

    play_routes(
        name = "play-routes-additional-imports-{}".format(scala_version_dash),
        srcs = ["conf/additional_imports.routes"],
        include_play_imports = True,
        routes_imports = [
            "rulesplayroutes.test.User",
            "rulesplayroutes.test.binders._",
        ],
        play_routes_toolchain_name = play_routes_toolchain_name,
    )

    play_routes(
        name = "play-routes-specified-generator-{}".format(scala_version_dash),
        srcs = ["conf/generator.routes"],
        include_play_imports = True,
        routes_generator = "play.routes.compiler.InjectedRoutesGenerator",
        play_routes_toolchain_name = play_routes_toolchain_name,
    )

    play_routes(
        name = "play-routes-reverse-router-{}".format(scala_version_dash),
        srcs = ["conf/reverse_router.routes"],
        generate_reverse_router = True,
        include_play_imports = True,
        play_routes_toolchain_name = play_routes_toolchain_name,
    )

    # TOOD: Figure out what this does and add the test for it
    # play_routes(
    #   name = "play-routes-namespace-router-{}".format(scala_version_dash),
    #   srcs = ["conf/namespace_router.routes"],
    #   include_play_imports = True,
    #   generate_reverse_router = True,
    #   namespace_reverse_router = True,
    #   play_routes_toolchain_name = play_routes_toolchain_name,
    # )

    scala_test(
        name = "play-routes-compiler-test-{}".format(scala_version_dash),
        srcs = native.glob(["app/**/*.scala"]) + [
            "PlayRoutesCompilerTest.scala",
            ":play-routes-{}".format(scala_version_dash),
            ":play-routes-large-{}".format(scala_version_dash),
            ":play-routes-basic1-{}".format(scala_version_dash),
            ":play-routes-basic2-{}".format(scala_version_dash),
            ":play-routes-additional-imports-{}".format(scala_version_dash),
            ":play-routes-specified-generator-{}".format(scala_version_dash),
            ":play-routes-reverse-router-{}".format(scala_version_dash),
            # ":play-routes-namespace-router-{}".format(scala_version_dash),
        ],
        deps = [
            "@play_routes_test_{}//:javax_inject_javax_inject".format(scala_version_underscore),
            "@play_routes_test_{}//:org_apache_pekko_pekko_actor_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_playframework_play_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_playframework_play_configuration_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_playframework_play_guice_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_playframework_play_specs2_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_playframework_play_test_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_specs2_specs2_common_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_specs2_specs2_core_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_specs2_specs2_matcher_{}".format(scala_version_underscore, scala_version_underscore),
        ],
        scala = scala,
    )

    play_routes(
        name = "play-routes-reverse-router-only-{}".format(scala_version_dash),
        srcs = ["conf2/routes"],
        generate_forwards_router = False,
        generate_reverse_router = True,
        play_routes_toolchain_name = play_routes_toolchain_name,
    )

    play_routes(
        name = "play-routes-forward-only-{}".format(scala_version_dash),
        srcs = ["conf2/routes"],
        generate_forwards_router = True,
        generate_reverse_router = False,
        play_routes_toolchain_name = play_routes_toolchain_name,
    )

    scala_test(
        name = "split-forward-reverse-routes-test-{}".format(scala_version_dash),
        srcs = native.glob(["app/**/*.scala"]) + [
            "PlayReverseRoutesOnlyTest.scala",
            "PlayForwardRoutesOnlyTest.scala",
            ":play-routes-forward-only-{}".format(scala_version_dash),
        ],
        deps = [
            ":common-{}".format(scala_version_dash),
            "@play_routes_test_{}//:javax_inject_javax_inject".format(scala_version_underscore),
            "@play_routes_test_{}//:org_apache_pekko_pekko_actor_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_playframework_play_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_playframework_play_configuration_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_playframework_play_guice_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_playframework_play_specs2_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_playframework_play_test_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_specs2_specs2_common_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_specs2_specs2_core_{}".format(scala_version_underscore, scala_version_underscore),
            "@play_routes_test_{}//:org_specs2_specs2_matcher_{}".format(scala_version_underscore, scala_version_underscore),
        ],
        scala = scala,
    )

    scala_library(
        name = "common-{}".format(scala_version_dash),
        srcs = [
            "common/TestReverseRoutesOnly.scala",
            ":play-routes-reverse-router-only-{}".format(scala_version_dash),
        ],
        deps = [
            "@play_routes_test_{}//:org_playframework_play_{}".format(scala_version_underscore, scala_version_underscore),
        ],
        scala = scala,
    )
