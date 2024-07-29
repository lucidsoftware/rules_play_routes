"""
Load test 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

play_version = "3.0.4"
specs2_version = "4.20.8"

def play_routes_test_repositories():
    maven_install(
        name = "play_routes_test",
        artifacts = [
            "org.specs2:specs2-common_3:{}".format(specs2_version),
            "org.specs2:specs2-core_3:{}".format(specs2_version),
            "org.specs2:specs2-matcher_3:{}".format(specs2_version),
            "org.playframework:play_3:{}".format(play_version),
            "org.playframework:play-test_3:{}".format(play_version),
            "org.playframework:play-specs2_3:{}".format(play_version),
        ],
        repositories = [
            "https://repo.maven.apache.org/maven2",
            "https://maven-central.storage-download.googleapis.com/maven2",
            "https://mirror.bazel.build/repo1.maven.org/maven2",
        ],
        fetch_sources = True,
        maven_install_json = "@rules_play_routes//:play_routes_test_install.json",
    )
