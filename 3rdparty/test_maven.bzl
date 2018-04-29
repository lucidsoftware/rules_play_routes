# Do not edit. bazel-deps autogenerates this file from test-dependencies.yml.
java_import_external = None
scala_import_external = None
#load("@io_bazel_rules_scala//scala:scala_maven_import_external.bzl", "scala_import_external", "java_import_external")

def declare_maven(hash):
    lang = hash.pop("lang")
    import_args = hash["import_args"]

    # TODO: Change this back once java_import works again
    # if lang == "java":
    if False:
        java_import_external(**import_args)
    else:
    #elif lang.startswith("scala"):
        if "testonly_" in import_args:
            import_args.pop("testonly_")
        if "neverlink" in import_args:
            import_args.pop("neverlink")

        scala_import_external(**import_args)

    native.bind(**hash["bind_args"])

def list_dependencies():
    return [
        {
            "bind_args": {
                "actual": "@aopalliance_aopalliance",
                "name": "jar/aopalliance/aopalliance"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "0addec670fedcd3f113c5c8091d783280d23f75e3acb841b61a9cdb079376a08",
                "jar_urls": [
                    "http://central.maven.org/maven2/aopalliance/aopalliance/1.0/aopalliance-1.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "aopalliance_aopalliance",
                "srcjar_sha256": "e6ef91d439ada9045f419c77543ebe0416c3cdfc5b063448343417a3e4a72123",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/aopalliance/aopalliance/1.0/aopalliance-1.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@cglib_cglib_nodep",
                "name": "jar/cglib/cglib_nodep"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "e77f0b091a800acd15217bbc3c3629c1af0925b55b271fc5d0586422985639bb",
                "jar_urls": [
                    "http://central.maven.org/maven2/cglib/cglib-nodep/2.1_3/cglib-nodep-2.1_3.jar"
                ],
                "licenses": [ "notice" ],
                "name": "cglib_cglib_nodep",
                "srcjar_sha256": "bd099f21bb820d80cd33642ebd1d18f23cb9245a6e1276c0aa6788c5dd0a222f",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/cglib/cglib-nodep/2.1_3/cglib-nodep-2.1_3-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_fasterxml_jackson_core_jackson_annotations",
                "name": "jar/com/fasterxml/jackson/core/jackson_annotations"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "e24685f77058d54dd7e9ba64df31f91cb7f0fc0d025074eb46f1bcfabdb7141d",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.7.8/jackson-annotations-2.7.8.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_fasterxml_jackson_core_jackson_annotations",
                "srcjar_sha256": "88b22f2fbaafa507aff46fb25ad28b2df06553ce1b38a34aebcd46f67ee41268",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.7.8/jackson-annotations-2.7.8-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_fasterxml_jackson_core_jackson_core",
                "name": "jar/com/fasterxml/jackson/core/jackson_core"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "142cf3f9fbbbbec1143d345b1b36848b081465a64d03f0a11ef2e0e30ac9646a",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/fasterxml/jackson/core/jackson-core/2.7.8/jackson-core-2.7.8.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_fasterxml_jackson_core_jackson_core",
                "srcjar_sha256": "061e52207db102c076c2fc0d31c40d11e067c4a26ef11038f5ac46ba9bda3cb5",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/fasterxml/jackson/core/jackson-core/2.7.8/jackson-core-2.7.8-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_fasterxml_jackson_core_jackson_databind",
                "name": "jar/com/fasterxml/jackson/core/jackson_databind"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "013062affb8e2e3f8c22c6c47e39b59566a1f4771a9fae01c3e61e81fa96f244",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.7.8/jackson-databind-2.7.8.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_fasterxml_jackson_core_jackson_databind",
                "srcjar_sha256": "15ffa8011b900b80a8f3f6fd8ae7da549040de6d385b7c17e1316abf9220b40e",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.7.8/jackson-databind-2.7.8-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_fasterxml_jackson_datatype_jackson_datatype_jdk8",
                "name": "jar/com/fasterxml/jackson/datatype/jackson_datatype_jdk8"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "f2bd53c22755a1341a87f314f90aec287790029d46f043f7acbd93c60ac7f7af",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/fasterxml/jackson/datatype/jackson-datatype-jdk8/2.7.8/jackson-datatype-jdk8-2.7.8.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_fasterxml_jackson_datatype_jackson_datatype_jdk8",
                "srcjar_sha256": "102bc8eff9ebcd4c246c56ca612d21dc5ee4756f67b4da9debfd0618859d0082",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/fasterxml/jackson/datatype/jackson-datatype-jdk8/2.7.8/jackson-datatype-jdk8-2.7.8-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_fasterxml_jackson_datatype_jackson_datatype_jsr310",
                "name": "jar/com/fasterxml/jackson/datatype/jackson_datatype_jsr310"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "c8999101efc2b3802c92b5cca902b02b8b54c66f10b6db362487db9c85f4d211",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.7.8/jackson-datatype-jsr310-2.7.8.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_fasterxml_jackson_datatype_jackson_datatype_jsr310",
                "srcjar_sha256": "536c46bc148a7dd8d6a5540908f5fcaea2509dbfcdfbf8bccbe803564e70512f",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.7.8/jackson-datatype-jsr310-2.7.8-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_google_code_findbugs_jsr305",
                "name": "jar/com/google/code/findbugs/jsr305"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "c885ce34249682bc0236b4a7d56efcc12048e6135a5baf7a9cde8ad8cda13fcd",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/google/code/findbugs/jsr305/3.0.1/jsr305-3.0.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_google_code_findbugs_jsr305",
                "srcjar_sha256": "56c80429d828bfaaefbf0358334c2629228a0ca25c073707be589e9d6c9406e6",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/google/code/findbugs/jsr305/3.0.1/jsr305-3.0.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_google_code_gson_gson",
                "name": "jar/com/google/code/gson/gson"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "13f44a2f6ead058da80a91ee650c073871942468e684a9bf6a0d0319138924ce",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/google/code/gson/gson/2.3.1/gson-2.3.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_google_code_gson_gson",
                "srcjar_sha256": "2f2bfe44fad034b526caeb600f3cfca056a143c6c9fbd239f5cbcae4e862b8fa",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/google/code/gson/gson/2.3.1/gson-2.3.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        # duplicates in com.google.guava:guava promoted to 19.0
        # - com.google.inject:guice:4.0 wanted version 16.0.1
        # - com.typesafe.play:play-test_2.11:2.5.18 wanted version 19.0
        {
            "bind_args": {
                "actual": "@com_google_guava_guava",
                "name": "jar/com/google/guava/guava"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "58d4cc2e05ebb012bbac568b032f75623be1cb6fb096f3c60c72a86f7f057de4",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/google/guava/guava/19.0/guava-19.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_google_guava_guava",
                "srcjar_sha256": "814e1ebf708d38c3b00155fbd484a401a6f771b512862e4bf58863c4f9563c6a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/google/guava/guava/19.0/guava-19.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_google_inject_extensions_guice_assistedinject",
                "name": "jar/com/google/inject/extensions/guice_assistedinject"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "ed44e4d809e6b3bc41ccd6e8b5acf43fb517234f4ac4c1125d7a82c44826f147",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/google/inject/extensions/guice-assistedinject/4.0/guice-assistedinject-4.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_google_inject_extensions_guice_assistedinject",
                "srcjar_sha256": "689d2ee112437e3b03082876a902bd228f6067568d7d31c02b31a22babc889f3",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/google/inject/extensions/guice-assistedinject/4.0/guice-assistedinject-4.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_google_inject_guice",
                "name": "jar/com/google/inject/guice"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@aopalliance_aopalliance",
                    "@com_google_guava_guava",
                    "@javax_inject_javax_inject"
                ],
                "jar_sha256": "b378ffc35e7f7125b3c5f3a461d4591ae1685e3c781392f0c854ed7b7581d6d2",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/google/inject/guice/4.0/guice-4.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_google_inject_guice",
                "srcjar_sha256": "5ae16a56d478312ecee129b241a3df0fc9016b241bd4a0cbcd6b33f900a1eba6",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/google/inject/guice/4.0/guice-4.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_novocode_junit_interface",
                "name": "jar/com/novocode/junit_interface"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_scala_sbt_test_interface" ],
                "jar_sha256": "29e923226a0d10e9142bbd81073ef52f601277001fcf9014389bf0af3dc33dc3",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/novocode/junit-interface/0.11/junit-interface-0.11.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_novocode_junit_interface",
                "srcjar_sha256": "246e6cf2552f906ef9f366d991700b4ea99963e93013470d8db6fdf19a5021de",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/novocode/junit-interface/0.11/junit-interface-0.11-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_akka_akka_actor_2_11",
                "name": "jar/com/typesafe/akka/akka_actor_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "bfe4da9af1e56b3ea81355c444e9a493844a35ba078017ebd601b9684b8195b2",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/akka/akka-actor_2.11/2.4.20/akka-actor_2.11-2.4.20.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_akka_akka_actor_2_11",
                "srcjar_sha256": "c2042b7b7c70eeaec0f08ee8fb5e75fd33c52deb319207d3ee7ba89b23edfea3",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/akka/akka-actor_2.11/2.4.20/akka-actor_2.11-2.4.20-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_akka_akka_slf4j_2_11",
                "name": "jar/com/typesafe/akka/akka_slf4j_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "8353eadc24933b0e4400a6deb55bca8ab9238490a3d9ba229a813a1427235051",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/akka/akka-slf4j_2.11/2.4.20/akka-slf4j_2.11-2.4.20.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_akka_akka_slf4j_2_11",
                "srcjar_sha256": "7705deff6f2cf0b92043a34f449c8593bf16cd9030c77c7f1e7ab385a0a462ac",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/akka/akka-slf4j_2.11/2.4.20/akka-slf4j_2.11-2.4.20-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_akka_akka_stream_2_11",
                "name": "jar/com/typesafe/akka/akka_stream_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@com_typesafe_ssl_config_core_2_11" ],
                "jar_sha256": "1bb3f475a150f56cd6045c1799a858a9e13836c7769a532d86a7e16aa8588754",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/akka/akka-stream_2.11/2.4.20/akka-stream_2.11-2.4.20.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_akka_akka_stream_2_11",
                "srcjar_sha256": "8ad85c275f5ec751407066b912f21a3329ad969910fca359f26d949412328e8e",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/akka/akka-stream_2.11/2.4.20/akka-stream_2.11-2.4.20-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_netty_netty_reactive_streams_http",
                "name": "jar/com/typesafe/netty/netty_reactive_streams_http"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@com_typesafe_netty_netty_reactive_streams",
                    "@io_netty_netty_codec_http"
                ],
                "jar_sha256": "ec36e9cdf01337d28d62c91ffea5d19e8f761c6527d1e7e9aa1d836456845bca",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/netty/netty-reactive-streams-http/1.0.8/netty-reactive-streams-http-1.0.8.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_netty_netty_reactive_streams_http",
                "srcjar_sha256": "c0c33ba4f9fe738ec8b3c6e7e1cb6578daa4439557577e969688591d888b9bb4",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/netty/netty-reactive-streams-http/1.0.8/netty-reactive-streams-http-1.0.8-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_netty_netty_reactive_streams",
                "name": "jar/com/typesafe/netty/netty_reactive_streams"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@io_netty_netty_handler",
                    "@org_reactivestreams_reactive_streams"
                ],
                "jar_sha256": "a368c024079971086d83c89ff7fbd6a028e6a8185faafd6ab8339e760f0f7aa2",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/netty/netty-reactive-streams/1.0.8/netty-reactive-streams-1.0.8.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_netty_netty_reactive_streams",
                "srcjar_sha256": "640fd613fa17a20203d03a8d58b98a8069aef8b4930a821166b1a9857e12e3d9",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/netty/netty-reactive-streams/1.0.8/netty-reactive-streams-1.0.8-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_build_link",
                "name": "jar/com/typesafe/play/build_link"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@com_typesafe_play_play_exceptions" ],
                "jar_sha256": "6b5f5b5a68be45d1ebaa12b27d057f9eb4027f0a66d16a0c311e24f4411ade79",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/build-link/2.5.18/build-link-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_build_link",
                "srcjar_sha256": "c77ca6c7e05dffd77b09dc3780d880b7f6673f8c73cad791902493931cc96342",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/build-link/2.5.18/build-link-2.5.18-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_datacommons_2_11",
                "name": "jar/com/typesafe/play/play_datacommons_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "a15250e05ae7a5df3ed8e7062ccbb21fdb6bda8acb0502014cb173a33bf7711b",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-datacommons_2.11/2.5.18/play-datacommons_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_datacommons_2_11",
                "srcjar_sha256": "7f8eac033e642e5b448229ac862e0f26fa1c2721c8593ed321e729b3d30fcda2",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-datacommons_2.11/2.5.18/play-datacommons_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_exceptions",
                "name": "jar/com/typesafe/play/play_exceptions"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "754100c4790ff8446a52d61197e083c164b99672e25b68a0b5fb881a02e70a63",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-exceptions/2.5.18/play-exceptions-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_exceptions",
                "srcjar_sha256": "4d46b794b2fa8c68f425018cc9149addd0c11fb6520a242860b2b633caf81460",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-exceptions/2.5.18/play-exceptions-2.5.18-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_functional_2_11",
                "name": "jar/com/typesafe/play/play_functional_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "586b830c746da58c088d8cf9b3fec328cd303183b3494c1cf19e364f6e0160e4",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-functional_2.11/2.5.18/play-functional_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_functional_2_11",
                "srcjar_sha256": "3d9890c08d30ce5e50d7e05386b0f5ad4d2a1155628794be050e15962dc06732",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-functional_2.11/2.5.18/play-functional_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_iteratees_2_11",
                "name": "jar/com/typesafe/play/play_iteratees_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@com_typesafe_config" ],
                "jar_sha256": "ac41212305b12119ade1852d0fabedb496906752af0aa14ee250f53d9c9e25b0",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-iteratees_2.11/2.5.18/play-iteratees_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_iteratees_2_11",
                "srcjar_sha256": "10dad2874f0973d1c9260faacc9d32071af82164dd0b232e5c989b4dacb51258",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-iteratees_2.11/2.5.18/play-iteratees_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_json_2_11",
                "name": "jar/com/typesafe/play/play_json_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@com_typesafe_play_play_datacommons_2_11",
                    "@com_typesafe_play_play_functional_2_11"
                ],
                "jar_sha256": "48678d072e10c0d6e5d4acdc7d637ed3428679c0d934c9c391cf6172de51f1e6",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-json_2.11/2.5.18/play-json_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_json_2_11",
                "srcjar_sha256": "e12d906682ac2537a13c883d895cc5b95f14fea526b28ed5f57aa56aafdadb37",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-json_2.11/2.5.18/play-json_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_netty_server_2_11",
                "name": "jar/com/typesafe/play/play_netty_server_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@com_typesafe_netty_netty_reactive_streams_http",
                    "@com_typesafe_play_play_server_2_11",
                    "@io_netty_netty_transport_native_epoll"
                ],
                "jar_sha256": "d2a594ec32a06b2d193b2b011e0bf9ae2a3e40c1b3217afbebe023c629a4501f",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-netty-server_2.11/2.5.18/play-netty-server_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_netty_server_2_11",
                "srcjar_sha256": "4d0161dca87dd88a80ade721c6097a88da9b52843034c66a1acb19c839305eec",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-netty-server_2.11/2.5.18/play-netty-server_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_netty_utils",
                "name": "jar/com/typesafe/play/play_netty_utils"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "c220a7ce94c2d14499fead6b2c66593e201a9c58d20bbec5e776f576805c4d25",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-netty-utils/2.5.18/play-netty-utils-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_netty_utils",
                "srcjar_sha256": "f94152c8c827da2522d8a6ac606fd1eac31add9bb2451647291cd0a7a79d10b9",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-netty-utils/2.5.18/play-netty-utils-2.5.18-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_server_2_11",
                "name": "jar/com/typesafe/play/play_server_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@com_typesafe_play_play_2_11",
                    "@com_typesafe_play_play_iteratees_2_11"
                ],
                "jar_sha256": "0875130a3b7addb492cf148a33be516fd01e2602c224f15d2c06c5a682c0a9af",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-server_2.11/2.5.18/play-server_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_server_2_11",
                "srcjar_sha256": "88dec4b976445432edfc3c7af290701f2955afa7f9dba03cd6ff805c86d666c1",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-server_2.11/2.5.18/play-server_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_specs2_2_11",
                "name": "jar/com/typesafe/play/play_specs2_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@com_typesafe_play_play_test_2_11",
                    "@org_specs2_specs2_core_2_11",
                    "@org_specs2_specs2_junit_2_11",
                    "@org_specs2_specs2_mock_2_11",
                    "@scala_scala_library//jar"
                ],
                "jar_sha256": "fbb67da184fc1b3b3c3d349cfca3957cfc9515a3aa0f0c2c13a5c09fed944b63",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-specs2_2.11/2.5.18/play-specs2_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_specs2_2_11",
                "srcjar_sha256": "3d8bc7bd3270f16d1618d20427ccd9474c54560e6c08753043de7984243d426a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-specs2_2.11/2.5.18/play-specs2_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_streams_2_11",
                "name": "jar/com/typesafe/play/play_streams_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@com_typesafe_akka_akka_stream_2_11",
                    "@org_reactivestreams_reactive_streams"
                ],
                "jar_sha256": "95539fb32b27fd4a939ff3fc07a80deed766510a3c201380b3f60c7157da5ccd",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-streams_2.11/2.5.18/play-streams_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_streams_2_11",
                "srcjar_sha256": "d33bdb658af76f892d1749ad3163944c26885c484801c94a9359b8ef3cd6080d",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-streams_2.11/2.5.18/play-streams_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_test_2_11",
                "name": "jar/com/typesafe/play/play_test_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@com_google_code_findbugs_jsr305",
                    "@com_google_guava_guava",
                    "@com_novocode_junit_interface",
                    "@com_typesafe_play_play_netty_server_2_11",
                    "@junit_junit",
                    "@net_sourceforge_htmlunit_htmlunit",
                    "@org_fluentlenium_fluentlenium_core",
                    "@scala_scala_library//jar"
                ],
                "jar_sha256": "c9d27f8cc1fd82248d0211a04be61b07f443f62d94e68294efdd63caf11eb0d6",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-test_2.11/2.5.18/play-test_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_test_2_11",
                "srcjar_sha256": "7bb338ab67928b9a2e1eae30c387a6ba45e61641189f2a5e6481b89a45ec3082",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play-test_2.11/2.5.18/play-test_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_play_2_11",
                "name": "jar/com/typesafe/play/play_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@com_fasterxml_jackson_core_jackson_annotations",
                    "@com_fasterxml_jackson_core_jackson_core",
                    "@com_fasterxml_jackson_core_jackson_databind",
                    "@com_fasterxml_jackson_datatype_jackson_datatype_jdk8",
                    "@com_fasterxml_jackson_datatype_jackson_datatype_jsr310",
                    "@com_google_inject_extensions_guice_assistedinject",
                    "@com_google_inject_guice",
                    "@com_typesafe_akka_akka_actor_2_11",
                    "@com_typesafe_akka_akka_slf4j_2_11",
                    "@com_typesafe_play_build_link",
                    "@com_typesafe_play_play_iteratees_2_11",
                    "@com_typesafe_play_play_json_2_11",
                    "@com_typesafe_play_play_netty_utils",
                    "@com_typesafe_play_play_streams_2_11",
                    "@com_typesafe_play_twirl_api_2_11",
                    "@commons_codec_commons_codec",
                    "@javax_transaction_jta",
                    "@joda_time_joda_time",
                    "@org_apache_commons_commons_lang3",
                    "@org_joda_joda_convert",
                    "@org_scala_lang_modules_scala_java8_compat_2_11",
                    "@org_scala_lang_modules_scala_parser_combinators_2_11",
                    "@org_scala_stm_scala_stm_2_11",
                    "@org_slf4j_jcl_over_slf4j",
                    "@org_slf4j_jul_to_slf4j",
                    "@org_slf4j_slf4j_api",
                    "@scala_scala_library//jar",
                    "@scala_scala_reflect//jar",
                    "@xerces_xercesImpl"
                ],
                "jar_sha256": "da84caa8ef028f9c4a425ccd8632581c49bf74615d8a72fcf02127da68bd1c78",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play_2.11/2.5.18/play_2.11-2.5.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_play_2_11",
                "srcjar_sha256": "d9f2b9a0380c00d4fb03f668d86015598fb332808c30455202f67cdc179fcba3",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/play_2.11/2.5.18/play_2.11-2.5.18-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_play_twirl_api_2_11",
                "name": "jar/com/typesafe/play/twirl_api_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_scala_lang_modules_scala_xml_2_11" ],
                "jar_sha256": "8cbc373640e2dab269bc0d4eada8fd47e9a06bb573ea9b7748eada58188547fa",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.11/1.1.1/twirl-api_2.11-1.1.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_play_twirl_api_2_11",
                "srcjar_sha256": "aa59cc9ff4a00e95330f8e8fcb4d4489d168bde4c2c433e5741428d62971d5e8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.11/1.1.1/twirl-api_2.11-1.1.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_config",
                "name": "jar/com/typesafe/config"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "e6fadfc6108220d3a6b86aa7e4e16c9e7bb857ba58955886308bb13972264af0",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/config/1.3.1/config-1.3.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_config",
                "srcjar_sha256": "f28ffd7e01b9ed0a8194cde55555f46fd11984bf4cd97fcba97621c15cf6cc12",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/config/1.3.1/config-1.3.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@com_typesafe_ssl_config_core_2_11",
                "name": "jar/com/typesafe/ssl_config_core_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "61f5f035659880982acd634690bc282787c7a7b0adb8d6037a3243b41f0114e4",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/ssl-config-core_2.11/0.2.1/ssl-config-core_2.11-0.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "com_typesafe_ssl_config_core_2_11",
                "srcjar_sha256": "15191c9de8f89c9d63cd92c66bafca5f64a9bcde36ad35b2fbbd2c1ef640f4ba",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/ssl-config-core_2.11/0.2.1/ssl-config-core_2.11-0.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@commons_codec_commons_codec",
                "name": "jar/commons_codec/commons_codec"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "4241dfa94e711d435f29a4604a3e2de5c4aa3c165e23bd066be6fc1fc4309569",
                "jar_urls": [
                    "http://central.maven.org/maven2/commons-codec/commons-codec/1.10/commons-codec-1.10.jar"
                ],
                "licenses": [ "notice" ],
                "name": "commons_codec_commons_codec",
                "srcjar_sha256": "dfae68268ce86f1a18fc45b99317c13d6c9d252f001d37961e79a51076808986",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/commons-codec/commons-codec/1.10/commons-codec-1.10-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@commons_io_commons_io",
                "name": "jar/commons_io/commons_io"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "cc6a41dc3eaacc9e440a6bd0d2890b20d36b4ee408fe2d67122f328bb6e01581",
                "jar_urls": [
                    "http://central.maven.org/maven2/commons-io/commons-io/2.4/commons-io-2.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "commons_io_commons_io",
                "srcjar_sha256": "d4635b348bbbf3f166d972b052bc4cac5b326c133beed7b8a1cab7ea22b61e01",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/commons-io/commons-io/2.4/commons-io-2.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@commons_logging_commons_logging",
                "name": "jar/commons_logging/commons_logging"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "daddea1ea0be0f56978ab3006b8ac92834afeefbd9b7e4e6316fca57df0fa636",
                "jar_urls": [
                    "http://central.maven.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "commons_logging_commons_logging",
                "srcjar_sha256": "44347acfe5860461728e9cb33251e97345be36f8a0dfd5c5130c172559455f41",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@io_netty_netty_buffer",
                "name": "jar/io/netty/netty_buffer"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "a8fa3bb54c9ce09f33cea1dd30eb11d5b634622b07103600d80614a6fceb8cd9",
                "jar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-buffer/4.0.51.Final/netty-buffer-4.0.51.Final.jar"
                ],
                "licenses": [ "notice" ],
                "name": "io_netty_netty_buffer",
                "srcjar_sha256": "9ce75af464117c5b7cd231a7a3ab52a98fd768e3d5f793fcc820955c763654af",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-buffer/4.0.51.Final/netty-buffer-4.0.51.Final-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@io_netty_netty_codec_http",
                "name": "jar/io/netty/netty_codec_http"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@io_netty_netty_codec" ],
                "jar_sha256": "48b18316ef3e4424c2b5a0638b2149ca72145a013846e8a2e3c92c0a560db542",
                "jar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-codec-http/4.0.41.Final/netty-codec-http-4.0.41.Final.jar"
                ],
                "licenses": [ "notice" ],
                "name": "io_netty_netty_codec_http",
                "srcjar_sha256": "478b4aab8b996fdf03d0f02e7fe32873b0b1c594cefbbc5c3d7ea5cffc3e8045",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-codec-http/4.0.41.Final/netty-codec-http-4.0.41.Final-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@io_netty_netty_codec",
                "name": "jar/io/netty/netty_codec"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "f0702a5eaf9750a83a0be796cb7c71762bd4d5859724b3d98832cd9d444e67c8",
                "jar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-codec/4.0.41.Final/netty-codec-4.0.41.Final.jar"
                ],
                "licenses": [ "notice" ],
                "name": "io_netty_netty_codec",
                "srcjar_sha256": "e67294e1cdcb0c185227630a38cfdcc44d78e85aede835ec8dec68ce2faeebd7",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-codec/4.0.41.Final/netty-codec-4.0.41.Final-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@io_netty_netty_common",
                "name": "jar/io/netty/netty_common"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "aed0dd1b648313046198d71043d3610ad15f6ee6269591eb390523582e77de0e",
                "jar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-common/4.0.51.Final/netty-common-4.0.51.Final.jar"
                ],
                "licenses": [ "notice" ],
                "name": "io_netty_netty_common",
                "srcjar_sha256": "aa9982a6b9eb1e6c46e367463f1e8fedc33114ccaadec70c485ac70a101c0abb",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-common/4.0.51.Final/netty-common-4.0.51.Final-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@io_netty_netty_handler",
                "name": "jar/io/netty/netty_handler"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "b1e4836e774ba2798f8543c2eaf8bfce9c548f5927eb2dbd4fd0fd77ce8e14ec",
                "jar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-handler/4.0.41.Final/netty-handler-4.0.41.Final.jar"
                ],
                "licenses": [ "notice" ],
                "name": "io_netty_netty_handler",
                "srcjar_sha256": "70e11bb5ec38e132b436c315b91d43e0b6943300ed22bfeaed0ce4a3e0db0a04",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-handler/4.0.41.Final/netty-handler-4.0.41.Final-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@io_netty_netty_transport_native_epoll",
                "name": "jar/io/netty/netty_transport_native_epoll"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@io_netty_netty_buffer",
                    "@io_netty_netty_common",
                    "@io_netty_netty_transport"
                ],
                "jar_sha256": "5f008ea456f9b03d5d9b4c470a4f2ad3e163b99291e25f5872b1bf3b8ff668bc",
                "jar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-transport-native-epoll/4.0.51.Final/netty-transport-native-epoll-4.0.51.Final.jar"
                ],
                "licenses": [ "notice" ],
                "name": "io_netty_netty_transport_native_epoll",
                "srcjar_sha256": "8c164d3fe425ca1d9c9d711e128794f04fb976e9d4d739268baa74299318c54c",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-transport-native-epoll/4.0.51.Final/netty-transport-native-epoll-4.0.51.Final-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@io_netty_netty_transport",
                "name": "jar/io/netty/netty_transport"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "12fb74c6d2869d3c5a9e4d0b2fb38c07cc8b475c957bf9614e5aac071220e084",
                "jar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-transport/4.0.51.Final/netty-transport-4.0.51.Final.jar"
                ],
                "licenses": [ "notice" ],
                "name": "io_netty_netty_transport",
                "srcjar_sha256": "802730e5768bdcafd032443b7617fd7caf6d3af3c0eb77abfbd0c64908fe4346",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty-transport/4.0.51.Final/netty-transport-4.0.51.Final-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@io_netty_netty",
                "name": "jar/io/netty/netty"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "41644d7025378c62cffc165bd99bda1f6f11db381c1f7773c56a19294eb8cd31",
                "jar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty/3.5.2.Final/netty-3.5.2.Final.jar"
                ],
                "licenses": [ "notice" ],
                "name": "io_netty_netty",
                "srcjar_sha256": "c99a0dd6207579853d0cd760aaa38b13c33d7c5dcbc224c5e27de2fe14335648",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/io/netty/netty/3.5.2.Final/netty-3.5.2.Final-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@javax_inject_javax_inject",
                "name": "jar/javax/inject/javax_inject"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "91c77044a50c481636c32d916fd89c9118a72195390452c81065080f957de7ff",
                "jar_urls": [
                    "http://central.maven.org/maven2/javax/inject/javax.inject/1/javax.inject-1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "javax_inject_javax_inject",
                "srcjar_sha256": "c4b87ee2911c139c3daf498a781967f1eb2e75bc1a8529a2e7b328a15d0e433e",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/javax/inject/javax.inject/1/javax.inject-1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@javax_transaction_jta",
                "name": "jar/javax/transaction/jta"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "b8ec163b4a47bad16f9a0b7d03c3210c6b0a29216d768031073ac20817c0ba50",
                "jar_urls": [
                    "http://central.maven.org/maven2/javax/transaction/jta/1.1/jta-1.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "javax_transaction_jta",
                "srcjar_sha256": "2284e633f47cb8dcee40f52fcb8814334b3a163495c1f141e3fba00ad242f3fa",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/javax/transaction/jta/1.1/jta-1.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@joda_time_joda_time",
                "name": "jar/joda_time/joda_time"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "fed720edea7bde1bff4e4f71f1ff80bfe0b77074eda7c6a26229944ed3ad90f0",
                "jar_urls": [
                    "http://central.maven.org/maven2/joda-time/joda-time/2.9.6/joda-time-2.9.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "joda_time_joda_time",
                "srcjar_sha256": "472a6fa91eeb7534877befc0c1503ec7a246106642d5f870e3cb916b1482a530",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/joda-time/joda-time/2.9.6/joda-time-2.9.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@junit_junit",
                "name": "jar/junit/junit"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_hamcrest_hamcrest_core" ],
                "jar_sha256": "59721f0805e223d84b90677887d9ff567dc534d7c502ca903c0c2b17f05c116a",
                "jar_urls": [
                    "http://central.maven.org/maven2/junit/junit/4.12/junit-4.12.jar"
                ],
                "licenses": [ "notice" ],
                "name": "junit_junit",
                "srcjar_sha256": "9f43fea92033ad82bcad2ae44cec5c82abc9d6ee4b095cab921d11ead98bf2ff",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/junit/junit/4.12/junit-4.12-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@net_java_dev_jna_jna_platform",
                "name": "jar/net/java/dev/jna/jna_platform"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "f91ba7c0f26c34f04bf57d2ae30d4b19f906e7bb1de90eb3e1f4fdbf45d0c541",
                "jar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna-platform/4.1.0/jna-platform-4.1.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "net_java_dev_jna_jna_platform",
                "srcjar_sha256": "76e4fd9930c78604276872f22427d55295e00fa783b795fea14bef0bf2750472",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna-platform/4.1.0/jna-platform-4.1.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@net_java_dev_jna_jna",
                "name": "jar/net/java/dev/jna/jna"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "1aa37e9ea6baa0ee152d89509f758f0847eac66ec179b955cafe0919e540a92e",
                "jar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna/4.1.0/jna-4.1.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "net_java_dev_jna_jna",
                "srcjar_sha256": "a7d37342b0447865934bc74c19be90565e3b10a0c0251f1652647e9437533414",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna/4.1.0/jna-4.1.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@net_sourceforge_cssparser_cssparser",
                "name": "jar/net/sourceforge/cssparser/cssparser"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_w3c_css_sac" ],
                "jar_sha256": "a2ecbd27997d4a15a1eeed9aa13d861090e0cdbdf2d4543c772a34b7c1e32a8f",
                "jar_urls": [
                    "http://central.maven.org/maven2/net/sourceforge/cssparser/cssparser/0.9.18/cssparser-0.9.18.jar"
                ],
                "licenses": [ "notice" ],
                "name": "net_sourceforge_cssparser_cssparser",
                "srcjar_sha256": "41a5a7ff5cbf264634cad4f36eb3b7711f652271b66f858ad690fb5d457f8a08",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/net/sourceforge/cssparser/cssparser/0.9.18/cssparser-0.9.18-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@net_sourceforge_htmlunit_htmlunit_core_js",
                "name": "jar/net/sourceforge/htmlunit/htmlunit_core_js"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "32fd749af1599ab0daf22b60cbe97b6792cb9fe8b4220496a3adb667e58a5c3c",
                "jar_urls": [
                    "http://central.maven.org/maven2/net/sourceforge/htmlunit/htmlunit-core-js/2.17/htmlunit-core-js-2.17.jar"
                ],
                "licenses": [ "notice" ],
                "name": "net_sourceforge_htmlunit_htmlunit_core_js",
                "srcjar_sha256": "7ebb201582f04dca6d15ddbb4ad16ffda2d15a74321bf8f75b8f235db093cfee",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/net/sourceforge/htmlunit/htmlunit-core-js/2.17/htmlunit-core-js-2.17-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@net_sourceforge_htmlunit_htmlunit",
                "name": "jar/net/sourceforge/htmlunit/htmlunit"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@commons_codec_commons_codec",
                    "@commons_io_commons_io",
                    "@commons_logging_commons_logging",
                    "@net_sourceforge_cssparser_cssparser",
                    "@net_sourceforge_htmlunit_htmlunit_core_js",
                    "@net_sourceforge_nekohtml_nekohtml",
                    "@org_apache_commons_commons_lang3",
                    "@org_apache_httpcomponents_httpclient",
                    "@org_apache_httpcomponents_httpmime",
                    "@org_eclipse_jetty_websocket_websocket_client",
                    "@xalan_xalan",
                    "@xerces_xercesImpl"
                ],
                "jar_sha256": "57f98be3a828700711d5a5a268dafe8184ed4a0036304b8e2f1ccfdb2bb6bcfe",
                "jar_urls": [
                    "http://central.maven.org/maven2/net/sourceforge/htmlunit/htmlunit/2.20/htmlunit-2.20.jar"
                ],
                "licenses": [ "notice" ],
                "name": "net_sourceforge_htmlunit_htmlunit",
                "srcjar_sha256": "c579c3740d2391678ea02a7aac9763d7118cc9c28894a708a15ba0d296275a11",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/net/sourceforge/htmlunit/htmlunit/2.20/htmlunit-2.20-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@net_sourceforge_nekohtml_nekohtml",
                "name": "jar/net/sourceforge/nekohtml/nekohtml"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "452978e8b6667c7b8357fd3f0a2f2f405e4560a7148143a69181735da5d19045",
                "jar_urls": [
                    "http://central.maven.org/maven2/net/sourceforge/nekohtml/nekohtml/1.9.22/nekohtml-1.9.22.jar"
                ],
                "licenses": [ "notice" ],
                "name": "net_sourceforge_nekohtml_nekohtml",
                "srcjar_sha256": "001cbbe2b836993682b8c65d9e672fa5aacc7a3a6ff15ec22e88c0e39be834c3",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/net/sourceforge/nekohtml/nekohtml/1.9.22/nekohtml-1.9.22-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_apache_commons_commons_exec",
                "name": "jar/org/apache/commons/commons_exec"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "cb49812dc1bfb0ea4f20f398bcae1a88c6406e213e67f7524fb10d4f8ad9347b",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/commons/commons-exec/1.3/commons-exec-1.3.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_apache_commons_commons_exec",
                "srcjar_sha256": "c121d8e70010092bafc56f358e7259ac484653db595aafea1e67a040f51aea66",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/commons/commons-exec/1.3/commons-exec-1.3-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_apache_commons_commons_lang3",
                "name": "jar/org/apache/commons/commons_lang3"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "734c8356420cc8e30c795d64fd1fcd5d44ea9d90342a2cc3262c5158fbc6d98b",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_apache_commons_commons_lang3",
                "srcjar_sha256": "4709f16a9e0f8fd83ae155083d63044e23045aac8f6f0183a2db09f492491b12",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_apache_httpcomponents_httpclient",
                "name": "jar/org/apache/httpcomponents/httpclient"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_apache_httpcomponents_httpcore" ],
                "jar_sha256": "0dffc621400d6c632f55787d996b8aeca36b30746a716e079a985f24d8074057",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/httpcomponents/httpclient/4.5.2/httpclient-4.5.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_apache_httpcomponents_httpclient",
                "srcjar_sha256": "1eb8d2b8b0b1528fbda8b1dbaf65e0412d29ce78cd37040b94b8fd1d58fef85a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/httpcomponents/httpclient/4.5.2/httpclient-4.5.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_apache_httpcomponents_httpcore",
                "name": "jar/org/apache/httpcomponents/httpcore"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "f7bc09dc8a7003822d109634ffd3845d579d12e725ae54673e323a7ce7f5e325",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/httpcomponents/httpcore/4.4.4/httpcore-4.4.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_apache_httpcomponents_httpcore",
                "srcjar_sha256": "bf8a17189e48ae3964fb8ab79c32e6b87423229c38571024895d9c532bba6129",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/httpcomponents/httpcore/4.4.4/httpcore-4.4.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_apache_httpcomponents_httpmime",
                "name": "jar/org/apache/httpcomponents/httpmime"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "231a3f7e4962053db2be8461d5422e68fc458a3a7dd7d8ada803a348e21f8f07",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/httpcomponents/httpmime/4.5.2/httpmime-4.5.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_apache_httpcomponents_httpmime",
                "srcjar_sha256": "accfedcbe11b7eb496b70d0a19ee2b7cb26066c98450f51de9a6866b82a4ae4b",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/httpcomponents/httpmime/4.5.2/httpmime-4.5.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_eclipse_jetty_websocket_websocket_api",
                "name": "jar/org/eclipse/jetty/websocket/websocket_api"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "2ad5ab7d46a22e9f50987dcb59da0d9ebbc353359f724c66cb06bc13fb6df1c6",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/eclipse/jetty/websocket/websocket-api/9.2.15.v20160210/websocket-api-9.2.15.v20160210.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_eclipse_jetty_websocket_websocket_api",
                "srcjar_sha256": "abc1f6031dbdcbb04bfdf03ffca84489f8dec0e8518f5d5b5d1f003087e8542b",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/eclipse/jetty/websocket/websocket-api/9.2.15.v20160210/websocket-api-9.2.15.v20160210-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_eclipse_jetty_websocket_websocket_client",
                "name": "jar/org/eclipse/jetty/websocket/websocket_client"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@org_eclipse_jetty_jetty_io",
                    "@org_eclipse_jetty_jetty_util",
                    "@org_eclipse_jetty_websocket_websocket_common"
                ],
                "jar_sha256": "caf23ab2f8548700d860d18aae30fa13e15a29a5d2308bac4e6ae444ac2ba098",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/eclipse/jetty/websocket/websocket-client/9.2.15.v20160210/websocket-client-9.2.15.v20160210.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_eclipse_jetty_websocket_websocket_client",
                "srcjar_sha256": "000a6bfafa2a6c327b40d433c138f035309baf968c3557cd0dca0f0f50f2365c",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/eclipse/jetty/websocket/websocket-client/9.2.15.v20160210/websocket-client-9.2.15.v20160210-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_eclipse_jetty_websocket_websocket_common",
                "name": "jar/org/eclipse/jetty/websocket/websocket_common"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_eclipse_jetty_websocket_websocket_api" ],
                "jar_sha256": "5caae59182ebf39ebe6ba41c1ddf713787e0ce1d4300c1f6623e5b1f245ec453",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/eclipse/jetty/websocket/websocket-common/9.2.15.v20160210/websocket-common-9.2.15.v20160210.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_eclipse_jetty_websocket_websocket_common",
                "srcjar_sha256": "96ebb94f0440715f55e3bbab86a55f1bc8008dc1ac6c2c5cbcdcd0be6fb37451",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/eclipse/jetty/websocket/websocket-common/9.2.15.v20160210/websocket-common-9.2.15.v20160210-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_eclipse_jetty_jetty_io",
                "name": "jar/org/eclipse/jetty/jetty_io"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "6e97fbfeb5b90b37e9ed2094dfc34b92aa5c4039e47279e6094a011d7e1c5090",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/eclipse/jetty/jetty-io/9.2.15.v20160210/jetty-io-9.2.15.v20160210.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_eclipse_jetty_jetty_io",
                "srcjar_sha256": "eed28f5bd953b1bc94b8f518cb01477ea677e3ed42b0fccba2867fb24f23054c",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/eclipse/jetty/jetty-io/9.2.15.v20160210/jetty-io-9.2.15.v20160210-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_eclipse_jetty_jetty_util",
                "name": "jar/org/eclipse/jetty/jetty_util"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "be005b4553b86d104c563b2fb311797b8ce18da49987000fd3fb27a771f23f3d",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/eclipse/jetty/jetty-util/9.2.15.v20160210/jetty-util-9.2.15.v20160210.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_eclipse_jetty_jetty_util",
                "srcjar_sha256": "f6665ef4a4d3ca6075b4db9481ba1a1c2130293622230df075b2e32ab0944f22",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/eclipse/jetty/jetty-util/9.2.15.v20160210/jetty-util-9.2.15.v20160210-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_fluentlenium_fluentlenium_core",
                "name": "jar/org/fluentlenium/fluentlenium_core"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_seleniumhq_selenium_selenium_java" ],
                "jar_sha256": "4bcec5ba7d7033e50a01ad20d3aa0259962d152bf35107e579289cc25dcdacfe",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/fluentlenium/fluentlenium-core/0.10.9/fluentlenium-core-0.10.9.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_fluentlenium_fluentlenium_core",
                "srcjar_sha256": "14ef9d315dc705a9a071fa312d2a6feb641f4686394b1262c8d688dc9cc50bc7",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/fluentlenium/fluentlenium-core/0.10.9/fluentlenium-core-0.10.9-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_hamcrest_hamcrest_core",
                "name": "jar/org/hamcrest/hamcrest_core"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "66fdef91e9739348df7a096aa384a5685f4e875584cce89386a7a47251c4d8e9",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_hamcrest_hamcrest_core",
                "srcjar_sha256": "e223d2d8fbafd66057a8848cc94222d63c3cedd652cc48eddc0ab5c39c0f84df",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_joda_joda_convert",
                "name": "jar/org/joda/joda_convert"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "96d8f5163fb77bc747b92dd2eefc6aa2cfbc9fccdfc392eba2190cb4709b4328",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/joda/joda-convert/1.8.1/joda-convert-1.8.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_joda_joda_convert",
                "srcjar_sha256": "a4f140df48c0d25e22c80d958bae4a5e96ee5a9db58e12abf0dcbf0e248e2f86",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/joda/joda-convert/1.8.1/joda-convert-1.8.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_mockito_mockito_core",
                "name": "jar/org/mockito/mockito_core"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_objenesis_objenesis" ],
                "jar_sha256": "f97483ba0944b9fa133aa29638764ddbeadb51ec3dbc02074c58fa2caecd07fa",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/mockito/mockito-core/1.9.5/mockito-core-1.9.5.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_mockito_mockito_core",
                "srcjar_sha256": "1e1b8f1e952e2873f2fb94be4f2e289a8479424bb270d4bc28bb1416781a9a21",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/mockito/mockito-core/1.9.5/mockito-core-1.9.5-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_objenesis_objenesis",
                "name": "jar/org/objenesis/objenesis"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "c5694b55d92527479382f254199b3c6b1d8780f652ad61e9ca59919887f491a8",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/objenesis/objenesis/1.0/objenesis-1.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_objenesis_objenesis",
                "srcjar_sha256": "579edf7cdbf8ff9dda04f9e52fc5191da0a0e5d9a4c849f841a9d2b8e8117e16",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/objenesis/objenesis/1.0/objenesis-1.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_reactivestreams_reactive_streams",
                "name": "jar/org/reactivestreams/reactive_streams"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "ef867702a614b96eb6c64fb65a8f5e14bdfcabbc1ae056f78a1643f7b79ca0eb",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/reactivestreams/reactive-streams/1.0.0/reactive-streams-1.0.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_reactivestreams_reactive_streams",
                "srcjar_sha256": "7e673b0c8b0ac51bdef8655cacf7804fb9791c47e71161a36c94738d55eefea8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/reactivestreams/reactive-streams/1.0.0/reactive-streams-1.0.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scala_lang_modules_scala_java8_compat_2_11",
                "name": "jar/org/scala_lang/modules/scala_java8_compat_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "e02b7066fc04d8014d5da30ebf7ed63d3d30f84bb6e2c03fa0193deba2a10347",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-java8-compat_2.11/0.7.0/scala-java8-compat_2.11-0.7.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scala_lang_modules_scala_java8_compat_2_11",
                "srcjar_sha256": "bff6b15843e91ece2e3cc7df24042743482bad7e62d7c736c752b3204bdda721",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-java8-compat_2.11/0.7.0/scala-java8-compat_2.11-0.7.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scala_lang_modules_scala_parser_combinators_2_11",
                "name": "jar/org/scala_lang/modules/scala_parser_combinators_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "0dfaafce29a9a245b0a9180ec2c1073d2bd8f0330f03a9f1f6a74d1bc83f62d6",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.0.4/scala-parser-combinators_2.11-1.0.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scala_lang_modules_scala_parser_combinators_2_11",
                "srcjar_sha256": "8b8155720b40c0f7aee7dbc19d4b407307f6e57dd5394b58a3bc9849e28d25c1",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.0.4/scala-parser-combinators_2.11-1.0.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        # duplicates in org.scala-lang.modules:scala-xml_2.11 promoted to 1.0.4
        # - com.typesafe.play:twirl-api_2.11:1.1.1 wanted version 1.0.1
        # - org.scalaz:scalaz-core_2.11:7.1.4 wanted version 1.0.4
        {
            "bind_args": {
                "actual": "@org_scala_lang_modules_scala_xml_2_11",
                "name": "jar/org/scala_lang/modules/scala_xml_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "ee9b8e9bb7d91f455ddc8edda4da753a2af5fc5302289500e201e789794d5825",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.11/1.0.4/scala-xml_2.11-1.0.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scala_lang_modules_scala_xml_2_11",
                "srcjar_sha256": "87291438a61c86604dc357f63fa715d535405e603bd4f12f59fd00611a639fc8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.11/1.0.4/scala-xml_2.11-1.0.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scala_lang_scala_compiler",
                "name": "jar/org/scala_lang/scala_compiler"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "23a7eeefc043ef4846dfd08a66b0dfd60106bfc093e17c16e3c39183f146632f",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-compiler/2.11.7/scala-compiler-2.11.7.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scala_lang_scala_compiler",
                "srcjar_sha256": "777197d60fbfee83c3fd05f2c663758be1f6927695d2980cf5a52e3e6a74bd4a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-compiler/2.11.7/scala-compiler-2.11.7-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scala_sbt_test_interface",
                "name": "jar/org/scala_sbt/test_interface"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "15f70b38bb95f3002fec9aea54030f19bb4ecfbad64c67424b5e5fea09cd749e",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/test-interface/1.0/test-interface-1.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scala_sbt_test_interface",
                "srcjar_sha256": "c314491c9df4f0bd9dd125ef1d51228d70bd466ee57848df1cd1b96aea18a5ad",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/test-interface/1.0/test-interface-1.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scala_stm_scala_stm_2_11",
                "name": "jar/org/scala_stm/scala_stm_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "841e0831a1fba6c0932a45085b0bb0adecbd001ddec4959e908870e12c7f6a55",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-stm/scala-stm_2.11/0.7/scala-stm_2.11-0.7.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scala_stm_scala_stm_2_11",
                "srcjar_sha256": "6c218b34bd71271c4207c0ca7b02947d57781743bf0093e2af92722523aa275a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-stm/scala-stm_2.11/0.7/scala-stm_2.11-0.7-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scalaz_stream_scalaz_stream_2_11",
                "name": "jar/org/scalaz/stream/scalaz_stream_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_scodec_scodec_bits_2_11" ],
                "jar_sha256": "0a95d41d054a5c11f9086cde716dad87c9619b37f47631668caf6d6d56200edf",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/stream/scalaz-stream_2.11/0.8/scalaz-stream_2.11-0.8.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scalaz_stream_scalaz_stream_2_11",
                "srcjar_sha256": "9b9b3432347d7640f8605104bbf6fdf53801fca55adefc4b9d7cc44a6b5ab430",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/stream/scalaz-stream_2.11/0.8/scalaz-stream_2.11-0.8-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scalaz_scalaz_concurrent_2_11",
                "name": "jar/org/scalaz/scalaz_concurrent_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "8b8ac5a5ab73f644f87ef036234d627f1490e9e31957373c0576734f28eabb67",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/scalaz-concurrent_2.11/7.1.4/scalaz-concurrent_2.11-7.1.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scalaz_scalaz_concurrent_2_11",
                "srcjar_sha256": "93ee5d0c9e7d57795c51f3b7f51508ee6cbf039a707c3e150959cab7fccf55f9",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/scalaz-concurrent_2.11/7.1.4/scalaz-concurrent_2.11-7.1.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scalaz_scalaz_core_2_11",
                "name": "jar/org/scalaz/scalaz_core_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_scala_lang_modules_scala_xml_2_11" ],
                "jar_sha256": "86ba56aed29061f0cab03e54b8ecb432ac3bb4721823b54752a3da8b75debcae",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/scalaz-core_2.11/7.1.4/scalaz-core_2.11-7.1.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scalaz_scalaz_core_2_11",
                "srcjar_sha256": "2250faa488d26a757daf82f42cfa3a6a7af0af82057a914723b73700dc33e0ae",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/scalaz-core_2.11/7.1.4/scalaz-core_2.11-7.1.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scalaz_scalaz_effect_2_11",
                "name": "jar/org/scalaz/scalaz_effect_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "acac452d78208aa6f211a48b01da09f39f630bcec58260d3f6c038857fcea584",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/scalaz-effect_2.11/7.1.4/scalaz-effect_2.11-7.1.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scalaz_scalaz_effect_2_11",
                "srcjar_sha256": "27e9d6a05aaebe466b1d5e8820b7eb70d21d6d88910a7604614c973ba17a5335",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scalaz/scalaz-effect_2.11/7.1.4/scalaz-effect_2.11-7.1.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_scodec_scodec_bits_2_11",
                "name": "jar/org/scodec/scodec_bits_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "1b40862192175e9401bf22ef24afa43f9b0429ec1f47284d93a97d65447f491f",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scodec/scodec-bits_2.11/1.0.9/scodec-bits_2.11-1.0.9.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_scodec_scodec_bits_2_11",
                "srcjar_sha256": "e230bb48a3997e1ea133f5c4ed5abdef9a1257db5fd493b024c184e1c3b74246",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scodec/scodec-bits_2.11/1.0.9/scodec-bits_2.11-1.0.9-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_api",
                "name": "jar/org/seleniumhq/selenium/selenium_api"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "5f2d190a2b1bb157444540d4a7089107c7f0165acf5401877185b4afd105c7c3",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-api/2.48.2/selenium-api-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_api",
                "srcjar_sha256": "0723bcf5ff7fb0a1bd56deb0ba5e5f5332aac4881f75c33056b17e649bc3c698",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-api/2.48.2/selenium-api-2.48.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_chrome_driver",
                "name": "jar/org/seleniumhq/selenium/selenium_chrome_driver"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@org_seleniumhq_selenium_selenium_remote_driver"
                ],
                "jar_sha256": "bb5ad652ba0f91cc3ce5c4e35085214d482a855d692d47f216c044e413450c4b",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-chrome-driver/2.48.2/selenium-chrome-driver-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_chrome_driver",
                "srcjar_sha256": "9b2d381ef0889ffdef4b41931a625e5881b0fee826525fab8d572ba1009630bc",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-chrome-driver/2.48.2/selenium-chrome-driver-2.48.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_edge_driver",
                "name": "jar/org/seleniumhq/selenium/selenium_edge_driver"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_apache_commons_commons_exec" ],
                "jar_sha256": "91510f858885fb0f214203aef7eba36d5233d5e022640f7b8c77189508a970b8",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-edge-driver/2.48.2/selenium-edge-driver-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_edge_driver",
                "srcjar_sha256": "d005738455b47eb39f92488eeeb3e62e4b2e12e3915a32da14d4efc9282c9953",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-edge-driver/2.48.2/selenium-edge-driver-2.48.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_firefox_driver",
                "name": "jar/org/seleniumhq/selenium/selenium_firefox_driver"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "42825eb9e6fea09110c9e462738ea3e9ab155e553344789042441394bd8910b9",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-firefox-driver/2.48.2/selenium-firefox-driver-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_firefox_driver",
                "srcjar_sha256": "b24719e062fa742311fb4a926bd5c26a1601d1e7ef701398fb28426db98dfb46",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-firefox-driver/2.48.2/selenium-firefox-driver-2.48.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_htmlunit_driver",
                "name": "jar/org/seleniumhq/selenium/selenium_htmlunit_driver"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "344780544682a1169d8e74b6d0f7843fab0ee3d51efbdc544351a1ce2615260b",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-htmlunit-driver/2.48.2/selenium-htmlunit-driver-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_htmlunit_driver",
                "srcjar_sha256": "36113f50930f4f6891c54dc0e36cd48086fba8da8ef288b0c787711ab9c94ff8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-htmlunit-driver/2.48.2/selenium-htmlunit-driver-2.48.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_ie_driver",
                "name": "jar/org/seleniumhq/selenium/selenium_ie_driver"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@net_java_dev_jna_jna",
                    "@net_java_dev_jna_jna_platform"
                ],
                "jar_sha256": "95d176f996e678149578a2b57ca87c9dc7d175577fc9e8b994d3e64ef9f88f65",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-ie-driver/2.48.2/selenium-ie-driver-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_ie_driver",
                "srcjar_sha256": "d8e1bf6cf4d906e4aa5d158d8a69acbc8c50da465c2f3fb618164b558398aa27",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-ie-driver/2.48.2/selenium-ie-driver-2.48.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_java",
                "name": "jar/org/seleniumhq/selenium/selenium_java"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@org_seleniumhq_selenium_selenium_chrome_driver",
                    "@org_seleniumhq_selenium_selenium_edge_driver",
                    "@org_seleniumhq_selenium_selenium_firefox_driver",
                    "@org_seleniumhq_selenium_selenium_htmlunit_driver",
                    "@org_seleniumhq_selenium_selenium_ie_driver",
                    "@org_seleniumhq_selenium_selenium_leg_rc",
                    "@org_seleniumhq_selenium_selenium_safari_driver",
                    "@org_seleniumhq_selenium_selenium_support",
                    "@org_webbitserver_webbit"
                ],
                "jar_sha256": "5d3a2562379270ec7acc46cc42d27f9255f42b61cd79444a41a73ff55a5b444e",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-java/2.48.2/selenium-java-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_java"
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_leg_rc",
                "name": "jar/org/seleniumhq/selenium/selenium_leg_rc"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "d2f92575d460d673ca66d9b6dcaeb179b319273cf480d796962da96971daa05c",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-leg-rc/2.48.2/selenium-leg-rc-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_leg_rc",
                "srcjar_sha256": "c622a2a4aa484919d47bd5d2887981234a25c4a0635978cda8e57e85e51cd3a0",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-leg-rc/2.48.2/selenium-leg-rc-2.48.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_remote_driver",
                "name": "jar/org/seleniumhq/selenium/selenium_remote_driver"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@cglib_cglib_nodep",
                    "@com_google_code_gson_gson",
                    "@org_seleniumhq_selenium_selenium_api"
                ],
                "jar_sha256": "64d0aed881964938b18b0a23cedd2bba410c8c41ce1bf26fc280f57b36b2d29a",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-remote-driver/2.48.2/selenium-remote-driver-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_remote_driver",
                "srcjar_sha256": "680a3f7133a13493729c30113f97d40516c75c2492b6de2ad4b145f43a0ace5e",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-remote-driver/2.48.2/selenium-remote-driver-2.48.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_safari_driver",
                "name": "jar/org/seleniumhq/selenium/selenium_safari_driver"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "f7649066cefa5f73182170ca3c3c394bbc3c7e23133d9f5daf3126a801cc3871",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-safari-driver/2.48.2/selenium-safari-driver-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_safari_driver",
                "srcjar_sha256": "c792503dc40f046d22b6c1c36af61c781020e2a36beb91aa7f3e0d48319958b9",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-safari-driver/2.48.2/selenium-safari-driver-2.48.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_seleniumhq_selenium_selenium_support",
                "name": "jar/org/seleniumhq/selenium/selenium_support"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "638fd743db6557d344c68b1a7a07f1db164174425ad1d3307609c90f99c34430",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-support/2.48.2/selenium-support-2.48.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_seleniumhq_selenium_selenium_support",
                "srcjar_sha256": "d849b0d14e0b7a42fcdf3ba54171849302237e786b88bb982d267d9e32b94a8d",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-support/2.48.2/selenium-support-2.48.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_slf4j_jcl_over_slf4j",
                "name": "jar/org/slf4j/jcl_over_slf4j"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "686b9dab357b7b665b969bbbf3dcdc67edd88ee9500699e893b5e70927be5e3f",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/slf4j/jcl-over-slf4j/1.7.21/jcl-over-slf4j-1.7.21.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_slf4j_jcl_over_slf4j",
                "srcjar_sha256": "5f9edefe7db1dfd99eb341f253b721e515f82dd3b528aa48630fccd6bb39e3a6",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/slf4j/jcl-over-slf4j/1.7.21/jcl-over-slf4j-1.7.21-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_slf4j_jul_to_slf4j",
                "name": "jar/org/slf4j/jul_to_slf4j"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "446d6dad595ab38a78247a80c631e701ad7e08674f4a67a87deeb4b41c91e8bc",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/slf4j/jul-to-slf4j/1.7.21/jul-to-slf4j-1.7.21.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_slf4j_jul_to_slf4j",
                "srcjar_sha256": "fc463f5574b7296c1a2cb83d4dab212147feddc39f09080b3d339db027a8184b",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/slf4j/jul-to-slf4j/1.7.21/jul-to-slf4j-1.7.21-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_slf4j_slf4j_api",
                "name": "jar/org/slf4j/slf4j_api"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "1d5aeb6bd98b0fdd151269eae941c05f6468a791ea0f1e68d8e7fe518af3e7df",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.21/slf4j-api-1.7.21.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_slf4j_slf4j_api",
                "srcjar_sha256": "3d68eb11e27819d6a999b603d104566d8cdd93fd37efa2c02e12a99809f49c86",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.21/slf4j-api-1.7.21-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_specs2_specs2_common_2_11",
                "name": "jar/org/specs2/specs2_common_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@org_scalaz_scalaz_concurrent_2_11",
                    "@org_scalaz_scalaz_core_2_11",
                    "@org_scalaz_scalaz_effect_2_11",
                    "@org_scalaz_stream_scalaz_stream_2_11",
                    "@org_spire_math_kind_projector_2_11"
                ],
                "jar_sha256": "8b3b57c31fcd95844e662338763236e7ce4f9f97fc728763d1e65764f34f78c5",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-common_2.11/3.6.6/specs2-common_2.11-3.6.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_specs2_specs2_common_2_11",
                "srcjar_sha256": "3c8a53c1301061088141c87d7c6cea0180d2e7dbad225276036657ac52a74631",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-common_2.11/3.6.6/specs2-common_2.11-3.6.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_specs2_specs2_core_2_11",
                "name": "jar/org/specs2/specs2_core_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@org_specs2_specs2_matcher_2_11",
                    "@scala_scala_reflect//jar"
                ],
                "jar_sha256": "83de2242a6e5a6f11cb606af528656e708ca8a70a7eea40f719c8db445bb8b3a",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-core_2.11/3.6.6/specs2-core_2.11-3.6.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_specs2_specs2_core_2_11",
                "srcjar_sha256": "55e642193c280da03bce5a11dfa2de0d8a6be2550163c373c30b5023e04d709a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-core_2.11/3.6.6/specs2-core_2.11-3.6.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_specs2_specs2_junit_2_11",
                "name": "jar/org/specs2/specs2_junit_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "ae4425b2412fc5c79cdb1899a6cb3d2288f90f60665da06f1a7eb96f13d162d6",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-junit_2.11/3.6.6/specs2-junit_2.11-3.6.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_specs2_specs2_junit_2_11",
                "srcjar_sha256": "6f773b95a34a865eabef32dd84dbb88ef556882a914145d7f49b841b986c7a98",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-junit_2.11/3.6.6/specs2-junit_2.11-3.6.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_specs2_specs2_matcher_2_11",
                "name": "jar/org/specs2/specs2_matcher_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_specs2_specs2_common_2_11" ],
                "jar_sha256": "3a157b6fd7210619f06205e65b99c0244c0e8ecfbc699d76c9556d65300cea3b",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-matcher_2.11/3.6.6/specs2-matcher_2.11-3.6.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_specs2_specs2_matcher_2_11",
                "srcjar_sha256": "939509ad3075181187b47e69e6f1f48e8580a2fa56bc0b5d536442cb9a9c39a3",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-matcher_2.11/3.6.6/specs2-matcher_2.11-3.6.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_specs2_specs2_mock_2_11",
                "name": "jar/org/specs2/specs2_mock_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@org_hamcrest_hamcrest_core",
                    "@org_mockito_mockito_core"
                ],
                "jar_sha256": "2cb58715148b15e979ae78aa0eb86e3004b6357dedfce7788201df1cd5d12bee",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-mock_2.11/3.6.6/specs2-mock_2.11-3.6.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_specs2_specs2_mock_2_11",
                "srcjar_sha256": "f93c06191ebf6c1b9c94b0868f00582fb83e1b0b06fc4cb4ef811e1cf3b99511",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/specs2/specs2-mock_2.11/3.6.6/specs2-mock_2.11-3.6.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_spire_math_kind_projector_2_11",
                "name": "jar/org/spire_math/kind_projector_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@org_scala_lang_scala_compiler" ],
                "jar_sha256": "5e387ebea7a6273179bc0da4c0fc16b7cafbd71675b66c0d9571e92d25fdc549",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/spire-math/kind-projector_2.11/0.7.1/kind-projector_2.11-0.7.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_spire_math_kind_projector_2_11",
                "srcjar_sha256": "aa735448f201488022633917f732179a3565e9c18ed8b7881a7d12a351622d0d",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/spire-math/kind-projector_2.11/0.7.1/kind-projector_2.11-0.7.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_w3c_css_sac",
                "name": "jar/org/w3c/css/sac"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "003785669f921aafe4f137468dd20a01a36111e94fd7449f26c16e7924d82d23",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/w3c/css/sac/1.3/sac-1.3.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_w3c_css_sac",
                "srcjar_sha256": "9ca0ff97617e9fe28fcdcf60f48c6cc1125cdce451e1a797dbce3bb5d3fcc398",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/w3c/css/sac/1.3/sac-1.3-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@org_webbitserver_webbit",
                "name": "jar/org/webbitserver/webbit"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@io_netty_netty" ],
                "jar_sha256": "3dce8681b6afebf1704d307f5124963723515bf75c586a525ef68f3720743bca",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/webbitserver/webbit/0.4.14/webbit-0.4.14.jar"
                ],
                "licenses": [ "notice" ],
                "name": "org_webbitserver_webbit",
                "srcjar_sha256": "c33e6ccbdb7f702dc16fa47299131a70e849b9b672ff9d72bf5e11f0c20a7a6b",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/webbitserver/webbit/0.4.14/webbit-0.4.14-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@xalan_serializer",
                "name": "jar/xalan/serializer"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "e8f5b4340d3b12a0cfa44ac2db4be4e0639e479ae847df04c4ed8b521734bb4a",
                "jar_urls": [
                    "http://central.maven.org/maven2/xalan/serializer/2.7.2/serializer-2.7.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "xalan_serializer",
                "srcjar_sha256": "15f88b71e32817c6b4d5977d54ad2fe1b18e82a8ab9a1d68ca568fb0aabb2ae6",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/xalan/serializer/2.7.2/serializer-2.7.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@xalan_xalan",
                "name": "jar/xalan/xalan"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@xalan_serializer" ],
                "jar_sha256": "a44bd80e82cb0f4cfac0dac8575746223802514e3cec9dc75235bc0de646af14",
                "jar_urls": [
                    "http://central.maven.org/maven2/xalan/xalan/2.7.2/xalan-2.7.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "xalan_xalan",
                "srcjar_sha256": "15f88b71e32817c6b4d5977d54ad2fe1b18e82a8ab9a1d68ca568fb0aabb2ae6",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/xalan/xalan/2.7.2/xalan-2.7.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@xerces_xercesImpl",
                "name": "jar/xerces/xercesImpl"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@xml_apis_xml_apis" ],
                "jar_sha256": "175bbbd9def7a22a30e05f9c8db629c88fa5bdfc57d5658791901b54222abe1c",
                "jar_urls": [
                    "http://central.maven.org/maven2/xerces/xercesImpl/2.11.0/xercesImpl-2.11.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "xerces_xercesImpl",
                "srcjar_sha256": "8c5c7844749c0cfd6735ffd43630025b1c1ac93da2ac30632e7df2530b1f8f11",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/xerces/xercesImpl/2.11.0/xercesImpl-2.11.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@xml_apis_xml_apis",
                "name": "jar/xml_apis/xml_apis"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "a840968176645684bb01aed376e067ab39614885f9eee44abe35a5f20ebe7fad",
                "jar_urls": [
                    "http://central.maven.org/maven2/xml-apis/xml-apis/1.4.01/xml-apis-1.4.01.jar"
                ],
                "licenses": [ "notice" ],
                "name": "xml_apis_xml_apis",
                "srcjar_sha256": "5db8b94589e334283e01075458cfae920995e37ab997cb3b475fd0667b3158b2",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/xml-apis/xml-apis/1.4.01/xml-apis-1.4.01-sources.jar"
                ]
            },
            "lang": "java"
        }
    ]
def maven_dependencies(callback = declare_maven):
    for hash in list_dependencies():
        callback(hash)

    