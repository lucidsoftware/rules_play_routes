"""
Load test 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def play_routes_test_repositories():
    maven_install(
        name = "play_routes_test",
        artifacts = [
            "org.specs2:specs2-common_2.11:3.6.6",
            "org.specs2:specs2-core_2.11:3.6.6",
            "org.specs2:specs2-matcher_2.11:3.6.6",
            "com.typesafe.akka:akka-actor_2.11:2.4.20",
            "com.typesafe.play:play_2.11:2.5.19",
            "com.typesafe.play:play-test_2.11:2.5.19",
            "com.typesafe.play:play-specs2_2.11:2.5.19",
        ],
        repositories = [
            "http://central.maven.org/maven2",
        ],
        fetch_sources = True,
    )
