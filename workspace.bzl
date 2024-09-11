"""
Load 3rd party maven dependencies
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def play_routes_repositories():
    maven_install(
        name = "play_routes",
        artifacts = [
            # TODO: update to latest
            "com.lucidchart:play-routes-compiler-cli_2.13:3.0.3",
        ],
        repositories = [
            "https://repo.maven.apache.org/maven2",
            "https://maven-central.storage-download.googleapis.com/maven2",
            "https://mirror.bazel.build/repo1.maven.org/maven2",
        ],
        fetch_sources = True,
        fail_if_repin_required = True,
        maven_install_json = "@rules_play_routes//:play_routes_install.json",
    )
