# Do not edit. bazel-deps autogenerates this file from dependencies.yml.
java_import_external = None
scala_import_external = None
def list_dependencies():
    return [
        {
            "bind_args": {
                "actual": "@play_routes_com_eed3si9n_gigahorse_core_2_11",
                "name": "jar/play_routes_com/eed3si9n/gigahorse_core_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_typesafe_ssl_config_core_2_11",
                    "@play_routes_org_reactivestreams_reactive_streams",
                    "@play_routes_org_slf4j_slf4j_api"
                ],
                "jar_sha256": "5771b653aa6e7facf1408a7c3395313bb32ce87b5f6ad4bd06dc17d50527de94",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/gigahorse-core_2.11/0.3.0/gigahorse-core_2.11-0.3.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_eed3si9n_gigahorse_core_2_11",
                "srcjar_sha256": "48a40e3450cd8367a052a19d7ba716f219ebc4fc67ac69c17efcf7e45e44e405",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/gigahorse-core_2.11/0.3.0/gigahorse-core_2.11-0.3.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_eed3si9n_gigahorse_okhttp_2_11",
                "name": "jar/play_routes_com/eed3si9n/gigahorse_okhttp_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_eed3si9n_gigahorse_core_2_11",
                    "@play_routes_com_squareup_okhttp3_okhttp"
                ],
                "jar_sha256": "98306b90db2981a4d0bea3b36495b280b1f0235c68d4c70d42aad099dd8db890",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/gigahorse-okhttp_2.11/0.3.0/gigahorse-okhttp_2.11-0.3.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_eed3si9n_gigahorse_okhttp_2_11",
                "srcjar_sha256": "eeddf559ba29294e91c6f736746fbc5415ca91dbec10a9c2a1f7acfd7ea628ff",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/gigahorse-okhttp_2.11/0.3.0/gigahorse-okhttp_2.11-0.3.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_eed3si9n_shaded_scalajson_2_11",
                "name": "jar/play_routes_com/eed3si9n/shaded_scalajson_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "d09647756f82e9a9710d91758e39de7c7f94f79a0274e571387361b92efa208f",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/shaded-scalajson_2.11/1.0.0-M4/shaded-scalajson_2.11-1.0.0-M4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_eed3si9n_shaded_scalajson_2_11",
                "srcjar_sha256": "55f885b616713788333c085b7f8d605e7f91e24274badd2bd8c7d665e959e3b5",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/shaded-scalajson_2.11/1.0.0-M4/shaded-scalajson_2.11-1.0.0-M4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_eed3si9n_sjson_new_core_2_11",
                "name": "jar/play_routes_com/eed3si9n/sjson_new_core_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "bab0300786eb9b628e42558feefd52acb2650ecdae4daf8432cdd721738a05c2",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-core_2.11/0.8.2/sjson-new-core_2.11-0.8.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_eed3si9n_sjson_new_core_2_11",
                "srcjar_sha256": "0f526c63952f0da5163e8cd8062b8c935ef70d12a3e1a639510cb33f3f9e02a6",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-core_2.11/0.8.2/sjson-new-core_2.11-0.8.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_eed3si9n_sjson_new_murmurhash_2_11",
                "name": "jar/play_routes_com/eed3si9n/sjson_new_murmurhash_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "abe28fc4beb2409a298185fed87074505313238ee0e793b6ff38d8b7d5e4ce37",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-murmurhash_2.11/0.8.2/sjson-new-murmurhash_2.11-0.8.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_eed3si9n_sjson_new_murmurhash_2_11",
                "srcjar_sha256": "27b71ff8eaa5312bb053f6febbcea714973820498d08e154dbebe39f3902bb25",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-murmurhash_2.11/0.8.2/sjson-new-murmurhash_2.11-0.8.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_eed3si9n_sjson_new_scalajson_2_11",
                "name": "jar/play_routes_com/eed3si9n/sjson_new_scalajson_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_eed3si9n_shaded_scalajson_2_11",
                    "@play_routes_org_spire_math_jawn_parser_2_11"
                ],
                "jar_sha256": "12fa1e581dfe426a853387340d739549ebd3f0f635cf28668d6a2b610b3869c7",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-scalajson_2.11/0.8.2/sjson-new-scalajson_2.11-0.8.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_eed3si9n_sjson_new_scalajson_2_11",
                "srcjar_sha256": "8c54c453a5cc21dd1a192165b0bb72465640476268cd0b79c6d50eeafba1b62e",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/eed3si9n/sjson-new-scalajson_2.11/0.8.2/sjson-new-scalajson_2.11-0.8.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_github_scopt_scopt_2_11",
                "name": "jar/play_routes_com/github/scopt/scopt_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@play_routes_org_scala_lang_scala_library" ],
                "jar_sha256": "cc05b6ac379f9b45b6d832b7be556312039f3d57928b62190d3dcd04f34470b5",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/github/scopt/scopt_2.11/3.7.0/scopt_2.11-3.7.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_github_scopt_scopt_2_11",
                "srcjar_sha256": "1c9111bafb55ec192d04898123199e51440e1633118b112d0c14a611491805ef",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/github/scopt/scopt_2.11/3.7.0/scopt_2.11-3.7.0-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_google_protobuf_protobuf_java",
                "name": "jar/play_routes_com/google/protobuf/protobuf_java"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "90b82eeb94e7aba6f5053cc3d42f73da3ed188f4c6bc73a412d6fb3a12d97444",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/google/protobuf/protobuf-java/3.3.1/protobuf-java-3.3.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_google_protobuf_protobuf_java",
                "srcjar_sha256": "a5f40b040e76982c8ce70758acdabd063be8803f879a2a0b8a86f2a57feb8d3a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/google/protobuf/protobuf-java/3.3.1/protobuf-java-3.3.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_jcraft_jsch",
                "name": "jar/play_routes_com/jcraft/jsch"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "92eb273a3316762478fdd4fe03a0ce1842c56f496c9c12fe1235db80450e1fdb",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/jcraft/jsch/0.1.54/jsch-0.1.54.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_jcraft_jsch",
                "srcjar_sha256": "49d021dd58f6b455046a07331a68a5e647df354d7f6961b73df298203c43f44a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/jcraft/jsch/0.1.54/jsch-0.1.54-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_lihaoyi_fastparse_utils_2_11",
                "name": "jar/play_routes_com/lihaoyi/fastparse_utils_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "e11e08a55475acb8f71c614e8602c35be57f064ce28a83891ae355693cc87b51",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/fastparse-utils_2.11/0.4.2/fastparse-utils_2.11-0.4.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_lihaoyi_fastparse_utils_2_11",
                "srcjar_sha256": "e433d0834d74f6de605c6c5f3fbfc0b9965d5c8d59410feea38a7bbecfec9bc3",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/fastparse-utils_2.11/0.4.2/fastparse-utils_2.11-0.4.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_lihaoyi_fastparse_2_11",
                "name": "jar/play_routes_com/lihaoyi/fastparse_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_lihaoyi_fastparse_utils_2_11",
                    "@play_routes_com_lihaoyi_sourcecode_2_11"
                ],
                "jar_sha256": "2258f4f91b98cea78d3e3904f81bff16f30971c7b1b7c6a99e52500d37faaad3",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/fastparse_2.11/0.4.2/fastparse_2.11-0.4.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_lihaoyi_fastparse_2_11",
                "srcjar_sha256": "4cbd849cc63961c021c3d675b5301396b1c1201b578a8562b1162fd8cc677294",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/fastparse_2.11/0.4.2/fastparse_2.11-0.4.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_lihaoyi_sourcecode_2_11",
                "name": "jar/play_routes_com/lihaoyi/sourcecode_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "dde0171dd73ff51922419f5069b0b027179acb52dbe1aa6f97fb21e6948762c1",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/sourcecode_2.11/0.1.3/sourcecode_2.11-0.1.3.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_lihaoyi_sourcecode_2_11",
                "srcjar_sha256": "bdcdbd4d4e8eb5cffa1b80d0e13cc7a0c735a976f55acbb5d8514e83cc29b404",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/lihaoyi/sourcecode_2.11/0.1.3/sourcecode_2.11-0.1.3-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_lmax_disruptor",
                "name": "jar/play_routes_com/lmax/disruptor"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "8c5df12a17f614464ccacc9b7c4935e5f16e694b7788e714cde4b7587d5dd266",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/lmax/disruptor/3.3.6/disruptor-3.3.6.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_lmax_disruptor",
                "srcjar_sha256": "4b0640f3a400e434419ed772339eb8f0578a571132f1cda7bbe3eb910356e1a0",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/lmax/disruptor/3.3.6/disruptor-3.3.6-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_squareup_okhttp3_okhttp_urlconnection",
                "name": "jar/play_routes_com/squareup/okhttp3/okhttp_urlconnection"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "4631582b6818b6c8bdb0bca13b3ba126d2787969d33693d0f3912f1225fde3ec",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okhttp3/okhttp-urlconnection/3.7.0/okhttp-urlconnection-3.7.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_squareup_okhttp3_okhttp_urlconnection",
                "srcjar_sha256": "f9526df9ab982e83fd184ad55d3c1b46a027d840108de9c55811d973c33013dc",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okhttp3/okhttp-urlconnection/3.7.0/okhttp-urlconnection-3.7.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_squareup_okhttp3_okhttp",
                "name": "jar/play_routes_com/squareup/okhttp3/okhttp"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@play_routes_com_squareup_okio_okio" ],
                "jar_sha256": "f55abda036da75e1af45bd43b9dfa79b2a3d90905be9cb38687c6621597a8165",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okhttp3/okhttp/3.7.0/okhttp-3.7.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_squareup_okhttp3_okhttp",
                "srcjar_sha256": "a05aec7722b6b96354a49b8a225be6bb7c86609ff3c358c45d3a5a8e4805c544",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okhttp3/okhttp/3.7.0/okhttp-3.7.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_squareup_okio_okio",
                "name": "jar/play_routes_com/squareup/okio/okio"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "bfe7dfe483c37137966a1690f0c7d0b448ba217902c1fed202aaffdbba3291ae",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okio/okio/1.12.0/okio-1.12.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_squareup_okio_okio",
                "srcjar_sha256": "6b7aca5e64927cea1a51b7200b1b5378b15fb1067330b628f987febef25c21c9",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/squareup/okio/okio/1.12.0/okio-1.12.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_swoval_apple_file_events",
                "name": "jar/play_routes_com/swoval/apple_file_events"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "7700198d313795f79a2f3ebece8ab85596d028fd8c454be4f85bab1c9d07be8a",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/swoval/apple-file-events/1.3.2/apple-file-events-1.3.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_swoval_apple_file_events",
                "srcjar_sha256": "aabecf2ca251c1c1d39d001a008547d809d910ebac9ccb1d9337e5a092d89cd7",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/swoval/apple-file-events/1.3.2/apple-file-events-1.3.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_trueaccord_lenses_lenses_2_11",
                "name": "jar/play_routes_com/trueaccord/lenses/lenses_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "1e9fa3830dfcee99ba20bb55468757bb35762b5ee243ddb8c4d238e749a95cd7",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/trueaccord/lenses/lenses_2.11/0.4.12/lenses_2.11-0.4.12.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_trueaccord_lenses_lenses_2_11",
                "srcjar_sha256": "d96900272138164d80db79c1a5060d7ef52d16d94c4b2b5cebf1e15bbc381811",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/trueaccord/lenses/lenses_2.11/0.4.12/lenses_2.11-0.4.12-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_trueaccord_scalapb_scalapb_runtime_2_11",
                "name": "jar/play_routes_com/trueaccord/scalapb/scalapb_runtime_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_google_protobuf_protobuf_java",
                    "@play_routes_com_lihaoyi_fastparse_2_11",
                    "@play_routes_com_trueaccord_lenses_lenses_2_11"
                ],
                "jar_sha256": "61cf1b449077829b3afacf2e1bccba51256c89195601a2593bbb653490117795",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/trueaccord/scalapb/scalapb-runtime_2.11/0.6.0/scalapb-runtime_2.11-0.6.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_trueaccord_scalapb_scalapb_runtime_2_11",
                "srcjar_sha256": "b58438675b5d33c30b03bb59fd081b2aeb34868085e914036e6c9db5ba531bb7",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/trueaccord/scalapb/scalapb-runtime_2.11/0.6.0/scalapb-runtime_2.11-0.6.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_typesafe_play_routes_compiler_2_11",
                "name": "jar/play_routes_com/typesafe/play/routes_compiler_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_typesafe_play_twirl_api_2_11",
                    "@play_routes_commons_io_commons_io",
                    "@play_routes_org_scala_lang_modules_scala_parser_combinators_2_11",
                    "@play_routes_org_scala_lang_scala_library"
                ],
                "jar_sha256": "edc9b838b22aa0cdce117a93b5b3627e4567d31276c38fa771899f90a6b713e0",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/routes-compiler_2.11/2.5.12/routes-compiler_2.11-2.5.12.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_typesafe_play_routes_compiler_2_11",
                "srcjar_sha256": "3f3e84bc7435a2fe6bbccf341f25af370cca44b72014b68ecb8b6d489c893db9",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/routes-compiler_2.11/2.5.12/routes-compiler_2.11-2.5.12-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_typesafe_play_twirl_api_2_11",
                "name": "jar/play_routes_com/typesafe/play/twirl_api_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_org_apache_commons_commons_lang3",
                    "@play_routes_org_scala_lang_modules_scala_xml_2_11"
                ],
                "jar_sha256": "8cbc373640e2dab269bc0d4eada8fd47e9a06bb573ea9b7748eada58188547fa",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.11/1.1.1/twirl-api_2.11-1.1.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_typesafe_play_twirl_api_2_11",
                "srcjar_sha256": "aa59cc9ff4a00e95330f8e8fcb4d4489d168bde4c2c433e5741428d62971d5e8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.11/1.1.1/twirl-api_2.11-1.1.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_typesafe_config",
                "name": "jar/play_routes_com/typesafe/config"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "56f2c2e8acb95fb1e358b1e3faef2d565782c2a528747b01af8dd8e8bd87bd60",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/config/1.2.0/config-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_typesafe_config",
                "srcjar_sha256": "1acf655899a53e9acc577cb9d47e466095d83532cdfd1b17dd8e6f5c1c02642c",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/config/1.2.0/config-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_com_typesafe_ssl_config_core_2_11",
                "name": "jar/play_routes_com/typesafe/ssl_config_core_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@play_routes_com_typesafe_config" ],
                "jar_sha256": "b4575209938fbe567bd2930ad05536f9e0f4db4d17c42343b50719e7cdc20909",
                "jar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/ssl-config-core_2.11/0.2.2/ssl-config-core_2.11-0.2.2.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_com_typesafe_ssl_config_core_2_11",
                "srcjar_sha256": "b38ab9ea76461be5904cd05238ce12b0b98a4579f45daa0dd05edb76548bad10",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/com/typesafe/ssl-config-core_2.11/0.2.2/ssl-config-core_2.11-0.2.2-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_commons_io_commons_io",
                "name": "jar/play_routes_commons_io/commons_io"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "cc6a41dc3eaacc9e440a6bd0d2890b20d36b4ee408fe2d67122f328bb6e01581",
                "jar_urls": [
                    "http://central.maven.org/maven2/commons-io/commons-io/2.4/commons-io-2.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_commons_io_commons_io",
                "srcjar_sha256": "d4635b348bbbf3f166d972b052bc4cac5b326c133beed7b8a1cab7ea22b61e01",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/commons-io/commons-io/2.4/commons-io-2.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_jline_jline",
                "name": "jar/play_routes_jline/jline"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "cb489eb7caf57811f01b7ac9d1fb8175ee1d2086627cc69f524e7d68f5f67982",
                "jar_urls": [
                    "http://central.maven.org/maven2/jline/jline/2.14.4/jline-2.14.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_jline_jline",
                "srcjar_sha256": "521af91089abf9f6b154b42f32e99dca3d824fb8e22a844f78309f0fab5d1343",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/jline/jline/2.14.4/jline-2.14.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_net_java_dev_jna_jna_platform",
                "name": "jar/play_routes_net/java/dev/jna/jna_platform"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "68ee6431c6c07dda48deaa2627c56beeea0dec5927fe7848983e06f7a6a76a08",
                "jar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna-platform/4.5.0/jna-platform-4.5.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_net_java_dev_jna_jna_platform",
                "srcjar_sha256": "c0d41cc08b93646f90495bf850105dc9af1116169868b93589366c689eb5ddee",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna-platform/4.5.0/jna-platform-4.5.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_net_java_dev_jna_jna",
                "name": "jar/play_routes_net/java/dev/jna/jna"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "617a8d75f66a57296255a13654a99f10f72f0964336e352211247ed046da3e94",
                "jar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna/4.5.0/jna-4.5.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_net_java_dev_jna_jna",
                "srcjar_sha256": "e4da62978d75a5f47641d6c3548a6859c193fad8c5d0bc95a5f049d8ec1a0f79",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/net/java/dev/jna/jna/4.5.0/jna-4.5.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_apache_commons_commons_lang3",
                "name": "jar/play_routes_org/apache/commons/commons_lang3"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "734c8356420cc8e30c795d64fd1fcd5d44ea9d90342a2cc3262c5158fbc6d98b",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_apache_commons_commons_lang3",
                "srcjar_sha256": "4709f16a9e0f8fd83ae155083d63044e23045aac8f6f0183a2db09f492491b12",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_apache_logging_log4j_log4j_api",
                "name": "jar/play_routes_org/apache/logging/log4j/log4j_api"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "1205ab764b1326f7d96d99baa4a4e12614599bf3d735790947748ee116511fa2",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/logging/log4j/log4j-api/2.8.1/log4j-api-2.8.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_apache_logging_log4j_log4j_api",
                "srcjar_sha256": "453201e25c223bacfc58e47262390fa2879dfe095c6d883dc913667917665ceb",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/logging/log4j/log4j-api/2.8.1/log4j-api-2.8.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_apache_logging_log4j_log4j_core",
                "name": "jar/play_routes_org/apache/logging/log4j/log4j_core"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "815a73e20e90a413662eefe8594414684df3d5723edcd76070e1a5aee864616e",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.8.1/log4j-core-2.8.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_apache_logging_log4j_log4j_core",
                "srcjar_sha256": "efb8bd06659beda231375b72fb38f44d884b7d086f34e050204ffc8efe0cf6c2",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/apache/logging/log4j/log4j-core/2.8.1/log4j-core-2.8.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_reactivestreams_reactive_streams",
                "name": "jar/play_routes_org/reactivestreams/reactive_streams"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "ef867702a614b96eb6c64fb65a8f5e14bdfcabbc1ae056f78a1643f7b79ca0eb",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/reactivestreams/reactive-streams/1.0.0/reactive-streams-1.0.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_reactivestreams_reactive_streams",
                "srcjar_sha256": "7e673b0c8b0ac51bdef8655cacf7804fb9791c47e71161a36c94738d55eefea8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/reactivestreams/reactive-streams/1.0.0/reactive-streams-1.0.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        # duplicates in org.scala-lang.modules:scala-parser-combinators_2.11 promoted to 1.0.5
        # - com.typesafe.play:routes-compiler_2.11:2.5.12 wanted version 1.0.4
        # - org.scala-lang:scala-compiler:2.11.12 wanted version 1.0.4
        # - org.scala-sbt:zinc-compile-core_2.11:1.2.1 wanted version 1.0.5
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_lang_modules_scala_parser_combinators_2_11",
                "name": "jar/play_routes_org/scala_lang/modules/scala_parser_combinators_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "807664a343226eb0b5c3ab9a4bcc9b2683abac5ed7fcf6454585a52f47179828",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.0.5/scala-parser-combinators_2.11-1.0.5.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_lang_modules_scala_parser_combinators_2_11",
                "srcjar_sha256": "565912f84edc2a9437f1f7f0545bba75ec38e336613dba088753b8e2a8bba10a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.0.5/scala-parser-combinators_2.11-1.0.5-sources.jar"
                ]
            },
            "lang": "java"
        },
        # duplicates in org.scala-lang.modules:scala-xml_2.11 promoted to 1.0.5
        # - com.typesafe.play:twirl-api_2.11:1.1.1 wanted version 1.0.1
        # - org.scala-lang:scala-compiler:2.11.12 wanted version 1.0.5
        # - org.scala-sbt:sbinary_2.11:0.4.4 wanted version 1.0.5
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_lang_modules_scala_xml_2_11",
                "name": "jar/play_routes_org/scala_lang/modules/scala_xml_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "767e11f33eddcd506980f0ff213f9d553a6a21802e3be1330345f62f7ee3d50f",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.11/1.0.5/scala-xml_2.11-1.0.5.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_lang_modules_scala_xml_2_11",
                "srcjar_sha256": "c472bfbcccdd7b3843b4970f4538e943baccffa8ec21b4d7fea13274551e71b7",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.11/1.0.5/scala-xml_2.11-1.0.5-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_lang_scala_compiler",
                "name": "jar/play_routes_org/scala_lang/scala_compiler"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_org_scala_lang_modules_scala_parser_combinators_2_11",
                    "@play_routes_org_scala_lang_modules_scala_xml_2_11",
                    "@play_routes_org_scala_lang_scala_library",
                    "@play_routes_org_scala_lang_scala_reflect"
                ],
                "jar_sha256": "3e892546b72ab547cb77de4d840bcfd05c853e73390fed7370a8f19acb0735a0",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-compiler/2.11.12/scala-compiler-2.11.12.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_lang_scala_compiler",
                "srcjar_sha256": "d57797fe3982d69d56d432046459f5b72e87a422170d98cf295c3b1bbe93f456",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-compiler/2.11.12/scala-compiler-2.11.12-sources.jar"
                ]
            },
            "lang": "java"
        },
        # duplicates in org.scala-lang:scala-library fixed to 2.11.12
        # - com.github.scopt:scopt_2.11:3.7.0 wanted version 2.11.11
        # - com.typesafe.play:routes-compiler_2.11:2.5.12 wanted version 2.11.7
        # - org.scala-lang:scala-compiler:2.11.12 wanted version 2.11.12
        # - org.scala-lang:scala-reflect:2.11.12 wanted version 2.11.12
        # - org.scala-sbt:zinc_2.11:1.2.1 wanted version 2.11.12
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_lang_scala_library",
                "name": "jar/play_routes_org/scala_lang/scala_library"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "0b3d6fd42958ee98715ba2ec5fe221f4ca1e694d7c981b0ae0cd68e97baf6dce",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-library/2.11.12/scala-library-2.11.12.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_lang_scala_library",
                "srcjar_sha256": "a32ccfac851adeb094a31134af1034d0ba026512931433cba86d5dd12d91f1ff",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-library/2.11.12/scala-library-2.11.12-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_lang_scala_reflect",
                "name": "jar/play_routes_org/scala_lang/scala_reflect"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@play_routes_org_scala_lang_scala_library" ],
                "jar_sha256": "6ba385b450a6311a15c918cf8688b9af9327c6104f0ecbd35933cfcd3095fe04",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-reflect/2.11.12/scala-reflect-2.11.12.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_lang_scala_reflect",
                "srcjar_sha256": "4d4adbc4f5f6be87ec555635dd40926bf71c6d638a06d59d929de04386099063",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-lang/scala-reflect/2.11.12/scala-reflect-2.11.12-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_compiler_interface",
                "name": "jar/play_routes_org/scala_sbt/compiler_interface"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@play_routes_org_scala_sbt_util_interface" ],
                "jar_sha256": "25c7fd6171a58775caa1b80170d0a2256ab57b2eb65022123ebcfc4ea564d961",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/compiler-interface/1.2.1/compiler-interface-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_compiler_interface",
                "srcjar_sha256": "bd4153820e556420eda1415df90236ee69662a7490849c0bbaf99019b360c79e",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/compiler-interface/1.2.1/compiler-interface-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_io_2_11",
                "name": "jar/play_routes_org/scala_sbt/io_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_swoval_apple_file_events",
                    "@play_routes_net_java_dev_jna_jna",
                    "@play_routes_net_java_dev_jna_jna_platform"
                ],
                "jar_sha256": "310fb87e103bfb1c34fa8590a8b438172be8a31534b0ab05477deb54b17ecb82",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/io_2.11/1.2.0/io_2.11-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_io_2_11",
                "srcjar_sha256": "10487d8ddbf9ac8ed5f65944981dddd381d477097e71b6154891868a5e415c26",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/io_2.11/1.2.0/io_2.11-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_launcher_interface",
                "name": "jar/play_routes_org/scala_sbt/launcher_interface"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "11ab8f0e2c035c90f019e4f5780ee57de978b7018d34e8f020eb88aa8b14af25",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/launcher-interface/1.0.0/launcher-interface-1.0.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_launcher_interface",
                "srcjar_sha256": "ca2de13465aee529ebed512ecc1a214e521f436e9a2219042777b32a3cfcf287",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/launcher-interface/1.0.0/launcher-interface-1.0.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_librarymanagement_core_2_11",
                "name": "jar/play_routes_org/scala_sbt/librarymanagement_core_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_eed3si9n_gigahorse_okhttp_2_11",
                    "@play_routes_com_jcraft_jsch",
                    "@play_routes_com_squareup_okhttp3_okhttp_urlconnection",
                    "@play_routes_org_scala_sbt_util_cache_2_11",
                    "@play_routes_org_scala_sbt_util_position_2_11"
                ],
                "jar_sha256": "284bbc2a551771cf04a3357195d7f9428950993df0d940432de090da674fd724",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/librarymanagement-core_2.11/1.2.0/librarymanagement-core_2.11-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_librarymanagement_core_2_11",
                "srcjar_sha256": "856242e304e4cc6af4deda48dcee7798d3c45a36a1f91aac06f8368cea587846",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/librarymanagement-core_2.11/1.2.0/librarymanagement-core_2.11-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_sbinary_2_11",
                "name": "jar/play_routes_org/scala_sbt/sbinary_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_org_scala_lang_modules_scala_xml_2_11"
                ],
                "jar_sha256": "d9827ef39e5ecf811a32014736d80ce79ac7cb69a7dcd3ec8760d92608eb2570",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/sbinary_2.11/0.4.4/sbinary_2.11-0.4.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_sbinary_2_11",
                "srcjar_sha256": "20c59e7312225ad5fd06a98537076d63de24cf15148cefcf391e6f58f9c5c9d8",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/sbinary_2.11/0.4.4/sbinary_2.11-0.4.4-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_test_interface",
                "name": "jar/play_routes_org/scala_sbt/test_interface"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "15f70b38bb95f3002fec9aea54030f19bb4ecfbad64c67424b5e5fea09cd749e",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/test-interface/1.0/test-interface-1.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_test_interface",
                "srcjar_sha256": "c314491c9df4f0bd9dd125ef1d51228d70bd466ee57848df1cd1b96aea18a5ad",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/test-interface/1.0/test-interface-1.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_util_cache_2_11",
                "name": "jar/play_routes_org/scala_sbt/util_cache_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_eed3si9n_sjson_new_murmurhash_2_11"
                ],
                "jar_sha256": "c888ee5a09b320747fd2e1f2689d358f8dc7ce29e56e7a2c385f97308885f256",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-cache_2.11/1.2.0/util-cache_2.11-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_util_cache_2_11",
                "srcjar_sha256": "c1eb83d293dfd3cf8451447799fd16c8a8cfef24015116ee6f0e2da251be10b5",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-cache_2.11/1.2.0/util-cache_2.11-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_util_control_2_11",
                "name": "jar/play_routes_org/scala_sbt/util_control_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "f3966e809e58c96852b3d24d15264a4994a4310a5b97646b564ee713939c097f",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-control_2.11/1.2.0/util-control_2.11-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_util_control_2_11",
                "srcjar_sha256": "b7781df2ef4a8bcdd87e45bd2bcb9fbff438f091287196d2c21ce570fd6bc2c6",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-control_2.11/1.2.0/util-control_2.11-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_util_interface",
                "name": "jar/play_routes_org/scala_sbt/util_interface"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "444bc23ec31e30ed76a34cd7e142c1a7e4fa84b9d838945b46c8f6f780a798c6",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-interface/1.2.0/util-interface-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_util_interface",
                "srcjar_sha256": "94aa85d25647d83e83b31fb55494be70927989542d025608d6eb5650529c738a",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-interface/1.2.0/util-interface-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_util_logging_2_11",
                "name": "jar/play_routes_org/scala_sbt/util_logging_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_eed3si9n_sjson_new_core_2_11",
                    "@play_routes_com_eed3si9n_sjson_new_scalajson_2_11",
                    "@play_routes_com_lmax_disruptor",
                    "@play_routes_jline_jline",
                    "@play_routes_org_apache_logging_log4j_log4j_api",
                    "@play_routes_org_apache_logging_log4j_log4j_core",
                    "@play_routes_org_scala_lang_scala_reflect"
                ],
                "jar_sha256": "2b0c9f885b05466ec6233fd96cb7392c63935443f93a971aae99ae7b7adf09cb",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-logging_2.11/1.2.0/util-logging_2.11-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_util_logging_2_11",
                "srcjar_sha256": "47505bb0b17a9a766421fa3057f046607a9df3816e7c28197c8bb341f427259f",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-logging_2.11/1.2.0/util-logging_2.11-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_util_position_2_11",
                "name": "jar/play_routes_org/scala_sbt/util_position_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "6e781aabf42bbfbeb401429ac77a8a14fd6de38e8f7fda2b9d0d749600e4457e",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-position_2.11/1.2.0/util-position_2.11-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_util_position_2_11",
                "srcjar_sha256": "c1fb60e822dfe3474eac02bd9aaa7a9e1be01ea3c3fb38f9a835a102c6484d65",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-position_2.11/1.2.0/util-position_2.11-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_util_relation_2_11",
                "name": "jar/play_routes_org/scala_sbt/util_relation_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "20d549696c980b5944ee189ea5df145dfb51ed0072cff1deee4f82109a7fc11d",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-relation_2.11/1.2.0/util-relation_2.11-1.2.0.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_util_relation_2_11",
                "srcjar_sha256": "b5b9e72c4a584e977f5a3325ccc6aa11945f93ba4bb8f3f8ba76ccb105ffc056",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/util-relation_2.11/1.2.0/util-relation_2.11-1.2.0-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_zinc_apiinfo_2_11",
                "name": "jar/play_routes_org/scala_sbt/zinc_apiinfo_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "74e4de2408f6066a82b0aabccfa4ed399d03ec92698b307f7a0ce622e8667945",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-apiinfo_2.11/1.2.1/zinc-apiinfo_2.11-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_zinc_apiinfo_2_11",
                "srcjar_sha256": "55d6656ef1b62c00cf309eb38bb330db02e3de7902b4b18581b2039f9f571a7c",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-apiinfo_2.11/1.2.1/zinc-apiinfo_2.11-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_zinc_classfile_2_11",
                "name": "jar/play_routes_org/scala_sbt/zinc_classfile_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "a638abf86288029e3e60e6045539d91b45c7a5e515bddab8c89c4e1097591904",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-classfile_2.11/1.2.1/zinc-classfile_2.11-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_zinc_classfile_2_11",
                "srcjar_sha256": "b761600bfc80dfc2c19e47112d0d271852c86275ee806df48e0f2b82aa79e3c3",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-classfile_2.11/1.2.1/zinc-classfile_2.11-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_zinc_classpath_2_11",
                "name": "jar/play_routes_org/scala_sbt/zinc_classpath_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [ "@play_routes_org_scala_lang_scala_compiler" ],
                "jar_sha256": "64944cfd4ff3809cbc1ac61163c11369888828798410f39a0d3eb403b8d10132",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-classpath_2.11/1.2.1/zinc-classpath_2.11-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_zinc_classpath_2_11",
                "srcjar_sha256": "570fdfc52a539753ba03ab6813075faaeca90c189d3f139bbb187e901c9d0013",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-classpath_2.11/1.2.1/zinc-classpath_2.11-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_zinc_compile_core_2_11",
                "name": "jar/play_routes_org/scala_sbt/zinc_compile_core_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_org_scala_lang_modules_scala_parser_combinators_2_11",
                    "@play_routes_org_scala_sbt_launcher_interface",
                    "@play_routes_org_scala_sbt_util_control_2_11"
                ],
                "jar_sha256": "cc20877fae99e48662c46a7d65c8fa8f272d34f030efc243a636c40ddb56a8ef",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-compile-core_2.11/1.2.1/zinc-compile-core_2.11-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_zinc_compile_core_2_11",
                "srcjar_sha256": "e86df4517b92ffd967dfde0cdbcf34e10bd803ed8c8f139b258f332fe7df9952",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-compile-core_2.11/1.2.1/zinc-compile-core_2.11-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_zinc_core_2_11",
                "name": "jar/play_routes_org/scala_sbt/zinc_core_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_org_scala_sbt_compiler_interface",
                    "@play_routes_org_scala_sbt_io_2_11",
                    "@play_routes_org_scala_sbt_util_logging_2_11",
                    "@play_routes_org_scala_sbt_util_relation_2_11",
                    "@play_routes_org_scala_sbt_zinc_apiinfo_2_11",
                    "@play_routes_org_scala_sbt_zinc_classpath_2_11"
                ],
                "jar_sha256": "bf0abfffeb0a5d460ec3e75974cf26deb43f75edf57396b5ce79265bc24d6b57",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-core_2.11/1.2.1/zinc-core_2.11-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_zinc_core_2_11",
                "srcjar_sha256": "3b0e252faaabaabb197332f33c19b9cf7ca518bb0237a94e1796e09414f9b9a7",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-core_2.11/1.2.1/zinc-core_2.11-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_zinc_ivy_integration_2_11",
                "name": "jar/play_routes_org/scala_sbt/zinc_ivy_integration_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_org_scala_sbt_librarymanagement_core_2_11"
                ],
                "jar_sha256": "11526fa90362807cf8550921becd820ebe7205c0f336d9f79e1e854e288574d1",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-ivy-integration_2.11/1.2.1/zinc-ivy-integration_2.11-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_zinc_ivy_integration_2_11",
                "srcjar_sha256": "02f3b32d8843cdf7e6703ae99052ea9353a277af3acf598ea46f410322143870",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-ivy-integration_2.11/1.2.1/zinc-ivy-integration_2.11-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_zinc_persist_2_11",
                "name": "jar/play_routes_org/scala_sbt/zinc_persist_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_com_trueaccord_scalapb_scalapb_runtime_2_11",
                    "@play_routes_org_scala_sbt_sbinary_2_11"
                ],
                "jar_sha256": "c03cab8381995371b9be18fa3aac83ac5469098d2d73f9d77e8cdf72a6805e1b",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-persist_2.11/1.2.1/zinc-persist_2.11-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_zinc_persist_2_11",
                "srcjar_sha256": "783619b740b70fdbc046842fd33cb5d4d930346034051056f71ab61617b58d99",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc-persist_2.11/1.2.1/zinc-persist_2.11-1.2.1-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_scala_sbt_zinc_2_11",
                "name": "jar/play_routes_org/scala_sbt/zinc_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "exports": [
                    "@play_routes_org_scala_lang_scala_library",
                    "@play_routes_org_scala_sbt_zinc_classfile_2_11",
                    "@play_routes_org_scala_sbt_zinc_compile_core_2_11",
                    "@play_routes_org_scala_sbt_zinc_core_2_11",
                    "@play_routes_org_scala_sbt_zinc_ivy_integration_2_11",
                    "@play_routes_org_scala_sbt_zinc_persist_2_11"
                ],
                "jar_sha256": "12ca14eece2ee08a1ebe2c8d773627faff70828b9932fb7ee1ecad1967f163b7",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc_2.11/1.2.1/zinc_2.11-1.2.1.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_scala_sbt_zinc_2_11",
                "srcjar_sha256": "4a32d22b16d98dcbb2a595b1611d04ae1eef461a04685ba317a78aec3dbf1641",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/scala-sbt/zinc_2.11/1.2.1/zinc_2.11-1.2.1-sources.jar"
                ]
            },
            "lang": "scala"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_slf4j_slf4j_api",
                "name": "jar/play_routes_org/slf4j/slf4j_api"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "18c4a0095d5c1da6b817592e767bb23d29dd2f560ad74df75ff3961dbde25b79",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_slf4j_slf4j_api",
                "srcjar_sha256": "c4bc93180a4f0aceec3b057a2514abe04a79f06c174bbed910a2afb227b79366",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25-sources.jar"
                ]
            },
            "lang": "java"
        },
        {
            "bind_args": {
                "actual": "@play_routes_org_spire_math_jawn_parser_2_11",
                "name": "jar/play_routes_org/spire_math/jawn_parser_2_11"
            },
            "import_args": {
                "default_visibility": [ "//visibility:public" ],
                "jar_sha256": "f3f2b416d51bdc87792c5bd8a94735df4ae791892be1a3d319e120a23ed619e1",
                "jar_urls": [
                    "http://central.maven.org/maven2/org/spire-math/jawn-parser_2.11/0.10.4/jawn-parser_2.11-0.10.4.jar"
                ],
                "licenses": [ "notice" ],
                "name": "play_routes_org_spire_math_jawn_parser_2_11",
                "srcjar_sha256": "cb6c7d70edac643c961167c420a363de41e71df9d6b21dee24a9549643583ac1",
                "srcjar_urls": [
                    "http://central.maven.org/maven2/org/spire-math/jawn-parser_2.11/0.10.4/jawn-parser_2.11-0.10.4-sources.jar"
                ]
            },
            "lang": "java"
        }
    ]
    