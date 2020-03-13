"""
Load test 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def play_routes_test_repositories():
    maven_install(
        name = "play_routes_test",
        artifacts = [
            "org.specs2:specs2-common_2.12:4.7.0",
            "org.specs2:specs2-core_2.12:4.7.0",
            "org.specs2:specs2-matcher_2.12:4.7.0",
            "com.typesafe.akka:akka-actor_2.12:2.5.24",
            "com.typesafe.play:play_2.12:2.7.4",
            "com.typesafe.play:play-test_2.12:2.7.4",
            "com.typesafe.play:play-specs2_2.12:2.7.4",
        ],
        repositories = [
            "https://repo.maven.apache.org/maven2",
            "https://maven-central.storage-download.googleapis.com/maven2",
            "https://mirror.bazel.build/repo1.maven.org/maven2",
        ],
        fetch_sources = True,
        maven_install_json = "@io_bazel_rules_play_routes//:play_routes_test_install.json",
    )
