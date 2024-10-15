"""
Load test 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

play_version = "3.0.4"
specs2_version = "4.20.8"

def play_routes_test_3_repositories():
    play_routes_test_repositories(scala_version = "3")

def play_routes_test_2_13_repositories():
    play_routes_test_repositories(scala_version = "2.13")

def play_routes_test_repositories(scala_version):
    scala_version_underscore = scala_version.replace(".", "_")
    maven_install(
        name = "play_routes_test_{}".format(scala_version_underscore),
        artifacts = [
            "org.specs2:specs2-common_{}:{}".format(scala_version, specs2_version),
            "org.specs2:specs2-core_{}:{}".format(scala_version, specs2_version),
            "org.specs2:specs2-matcher_{}:{}".format(scala_version, specs2_version),
            "org.playframework:play_{}:{}".format(scala_version, play_version),
            "org.playframework:play-test_{}:{}".format(scala_version, play_version),
            "org.playframework:play-specs2_{}:{}".format(scala_version, play_version),
        ],
        repositories = [
            "https://repo.maven.apache.org/maven2",
            "https://maven-central.storage-download.googleapis.com/maven2",
            "https://mirror.bazel.build/repo1.maven.org/maven2",
        ],
        fetch_sources = True,
        fail_if_repin_required = True,
        maven_install_json = "@rules_play_routes//:play_routes_test_{}_install.json".format(scala_version_underscore),
    )
