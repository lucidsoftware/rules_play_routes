"""
Load 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def play_routes_repositories():
    maven_install(
        name = "play_routes",
        artifacts = [
            "com.github.scopt:scopt_2.11:3.7.0",
            "com.typesafe.play:routes-compiler_2.11:2.5.19",
            "org.scala-sbt:zinc_2.11:1.2.1",
            "org.scala-sbt:compiler-interface:1.2.1",
            "org.scala-sbt:util-interface:1.2.0",
            "org.scala-lang:scala-compiler:2.11.12",
            "org.scala-lang:scala-library:2.11.12",
            "org.scala-lang:scala-reflect:2.11.12",
        ],
        repositories = [
            "http://central.maven.org/maven2",
        ],
        fetch_sources = True,
    )
