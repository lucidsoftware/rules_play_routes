workspace(name = "io_bazel_rules_play_routes")

rules_scala_version = "24bc74b2664560fdba27b31da9e6c529dd231e1e" # update this as needed
http_archive(
  name = "io_bazel_rules_scala",
  url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip"%rules_scala_version,
  type = "zip",
  strip_prefix= "rules_scala-%s" % rules_scala_version
)

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

load("@io_bazel_rules_scala//specs2:specs2_junit.bzl", "specs2_junit_repositories")
specs2_junit_repositories()

load("@io_bazel_rules_scala//scala:toolchains.bzl", "scala_register_toolchains")
scala_register_toolchains()

git_repository(
    name = "io_bazel_rules_sass",
    remote = "https://github.com/bazelbuild/rules_sass.git",
    tag = "0.0.3",
)
load("@io_bazel_rules_sass//sass:sass.bzl", "sass_repositories")
sass_repositories()

git_repository(
    name = "io_bazel_skydoc",
    remote = "https://github.com/bazelbuild/skydoc.git",
    tag = "0.1.4",
)
load("@io_bazel_skydoc//skylark:skylark.bzl", "skydoc_repositories")
skydoc_repositories()

# For Skylint
# Once https://github.com/bazelbuild/bazel/issues/4086 is done, this should be
# much simpler
http_archive(
  name = "io_bazel",
  url = "https://github.com/bazelbuild/bazel/releases/download/0.10.0/bazel-0.10.0-dist.zip",
  sha256 = "47e0798caaac4df499bce5fe554a914abd884a855a27085a4473de1d737d9548",
)
# Also for Skylint. Comes from
# https://github.com/cgrushko/proto_library/blob/master/WORKSPACE
http_archive(
  name = "com_google_protobuf",
  sha256 = "cef7f1b5a7c5fba672bec2a319246e8feba471f04dcebfe362d55930ee7c1c30",
  strip_prefix = "protobuf-3.5.0",
  urls = ["https://github.com/google/protobuf/archive/v3.5.0.zip"],
)

maven_jar(
  name = "com_github_scopt_scopt_2_11",
  artifact = "com.github.scopt:scopt_2.11:jar:3.7.0",
  sha1 = "2f4b95257d082feb9e2a353a9a669c766b850931",
)


maven_jar(
  name = "commons_io_commons_io",
  artifact = "commons-io:commons-io:2.4",
  sha1 = "b1b6ea3b7e4aa4f492509a4952029cd8e48019ad",
)

maven_jar(
  name = "com_fasterxml_jackson_core_jackson_core",
  artifact = "com.fasterxml.jackson.core:jackson-core:2.7.8",
  sha1 = "eb5f06448049d455daa3b5e8ef29be712165be97",
)

maven_jar(
  name = "joda_time_joda_time",
  artifact = "joda-time:joda-time:2.9.6",
  sha1 = "e370a92153bf66da17549ecc78c69ec6c6ec9f41",
)

maven_jar(
  name = "org_joda_joda_convert",
  artifact = "org.joda:joda-convert:1.8.1",
  sha1 = "675642ac208e0b741bc9118dcbcae44c271b992a",
)

maven_jar(
  name = "org_seleniumhq_selenium_selenium_htmlunit_driver",
  artifact = "org.seleniumhq.selenium:selenium-htmlunit-driver:2.52.0",
  sha1 = "b9945a26ec2518b9d094e43e7d47b8e9146d5d39",
)

maven_jar(
  name = "org_seleniumhq_selenium_selenium_api",
  artifact = "org.seleniumhq.selenium:selenium-api:2.52.0",
  sha1 = "1c046fd54082863ebb50c76201050073210a6a6a",
)

maven_jar(
  name = "org_seleniumhq_selenium_selenium_firefox_driver",
  artifact = "org.seleniumhq.selenium:selenium-firefox-driver:2.52.0",
  sha1 = "4fd5b76728c52b106aa2d60df89a3bfcc74691c3",
)

maven_jar(
  name = "org_seleniumhq_selenium_selenium_remote_driver",
  artifact = "org.seleniumhq.selenium:selenium-remote-driver:2.52.0",
  sha1 = "a4040ffce1a58f6edd5a704d84d6432cbcbaaede",
)

maven_jar(
  name = "com_typesafe_play_twirl_api_2_11",
  artifact = "com.typesafe.play:twirl-api_2.11:1.1.1",
  sha1 = "b029d9500caec7fe30f9a485fc654ee82d40d404",
)

maven_jar(
  name = "com_typesafe_play_routes_compiler_2_11",
  artifact = "com.typesafe.play:routes-compiler_2.11:jar:2.5.18",
  sha1 = "cfca9de08f0fc8ac06e6f706a6f9c9f719f2b9ce",
)

maven_jar(
  name = "com_typesafe_play_play_2_11",
  artifact = "com.typesafe.play:play_2.11:2.5.18",
  sha1 = "ecdb539bcb41178993a8d33f2e867d6e19a960c2",
)

maven_jar(
  name = "com_typesafe_play_play_streams_2_11",
  artifact = "com.typesafe.play:play-streams_2.11:2.5.18",
  sha1 = "e67c35a5b9ffd488b28cb891b7322149601518e0",
)

maven_jar(
  name = "com_typesafe_play_play_test_2_11",
  artifact = "com.typesafe.play:play-test_2.11:2.5.18",
  sha1 = "4d55fdeab972b4dfef977bb76e788d3889d15bf4",
)

maven_jar(
  name = "com_typesafe_play_play_specs2_2_11",
  artifact = "com.typesafe.play:play-specs2_2.11:2.5.18",
  sha1 = "28d51846fe9fbd485a251bb2ee3d93e9af24aa24",
)

maven_jar(
  name = "com_typesafe_play_play_server_2_11",
  artifact = "com.typesafe.play:play-server_2.11:2.5.18",
  sha1 = "9d529062894ecd7d395c77dc3ee9464575951f63",
)

maven_jar(
  name = "com_typesafe_play_play_exceptions",
  artifact = "com.typesafe.play:play-exceptions:2.5.18",
  sha1 = "7239af808d9a740cfdeccbbeb2161eb2f9e267a1",
)

maven_jar(
  name = "com_typesafe_play_play_logback_2_11",
  artifact = "com.typesafe.play:play-logback_2.11:2.5.18",
  sha1 = "e8e7b34adbfef70e66ce80d4315689669817aa12",
)

maven_jar(
  name = "com_typesafe_play_play_iteratees_2_11",
  artifact = "com.typesafe.play:play-iteratees_2.11:2.5.18",
  sha1 = "e590ab107688ac2e86a51e454ec228983364f58e",
)

maven_jar(
  name = "com_typesafe_akka_akka_actor_2_11",
  artifact = "com.typesafe.akka:akka-actor_2.11:2.4.14",
  sha1 = "23557ca2216b0c838d9d1d56f682973fc55ba050",
)

maven_jar(
  name = "com_typesafe_akka_akka_stream_2_11",
  artifact = "com.typesafe.akka:akka-stream_2.11:2.4.14",
  sha1 = "a2b46da45dafd0cd47ef2b5c93db104109dd5e72",
)

maven_jar(
  name = "com_typesafe_akka_akka_slf4j_2_11",
  artifact = "com.typesafe.akka:akka-slf4j_2.11:2.4.14",
  sha1 = "ce04718b16a64633100b6dd460e7066b63c53094",
)

maven_jar(
  name = "com_typesafe_config",
  artifact = "com.typesafe:config:1.3.2",
  sha1 = "d6ac0ce079f114adce620f2360c92a70b2cb36dc",
)

maven_jar(
  name = "org_fluentlenium_fluentlenium_core",
  artifact = "org.fluentlenium:fluentlenium-core:0.10.9",
  sha1 = "6800ae6498480fc61e5753f1177aa6dc525129a2",
)

maven_jar(
  name = "com_google_inject_guice",
  artifact = "com.google.inject:guice:4.0",
  sha1 = "0f990a43d3725781b6db7cd0acf0a8b62dfd1649",
)

maven_jar(
  name = "com_google_guava_guava",
  artifact = "com.google.guava:guava:21.0",
  sha1 = "3a3d111be1be1b745edfa7d91678a12d7ed38709",
)

maven_jar(
  name = "aopalliance_aopalliance",
  artifact = "aopalliance:aopalliance:1.0",
  sha1 = "0235ba8b489512805ac13a8f9ea77a1ca5ebe3e8",
)

maven_jar(
  name = "ch_qos_logback_logback_core",
  artifact = "ch.qos.logback:logback-core:1.2.3",
  sha1 = "864344400c3d4d92dfeb0a305dc87d953677c03c",
)

maven_jar(
  name = "ch_qos_logback_logback_classic",
  artifact = "ch.qos.logback:logback-classic:1.2.3",
  sha1 = "7c4f3c474fb2c041d8028740440937705ebb473a",
)

maven_jar(
  name = "org_slf4j_slf4j_api",
  artifact = "org.slf4j:slf4j-api:1.7.21",
  sha1 = "139535a69a4239db087de9bab0bee568bf8e0b70",
)

maven_jar(
  name = "org_slf4j_jul_to_slf4j",
  artifact = "org.slf4j:jul-to-slf4j:1.7.21",
  sha1 = "2f22c882ffa479d1e9ff4eb0e8e2c29f2a0871ed",
)

maven_jar(
  name = "org_slf4j_jcl_over_slf4j",
  artifact = "org.slf4j:jcl-over-slf4j:1.7.21",
  sha1 = "331b564a3a42f002a0004b039c1c430da89062cd",
)

maven_jar(
  name = "org_slf4j_slf4j_simple",
  artifact = "org.slf4j:slf4j-simple:1.7.12",
  sha1 = "42db62298b899818ff17352cbc00050e940bbfb0",
)

maven_jar(
  name = "xerces_xercesImpl",
  artifact = "xerces:xercesImpl:2.11.0",
  sha1 = "9bb329db1cfc4e22462c9d6b43a8432f5850e92c",
)

maven_jar(
  name = "org_reactivestreams_reactive_streams",
  artifact = "org.reactivestreams:reactive-streams:1.0.0",
  sha1 = "14b8c877d98005ba3941c9257cfe09f6ed0e0d74",
)