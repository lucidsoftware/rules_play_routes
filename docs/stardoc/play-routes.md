<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Play Routes rules

Bazel rules for running the
[Play routes file compiler](https://github.com/playframework/playframework/tree/master/framework/src/routes-compiler/src/main/scala/play/routes/compiler)
on Play routes files

<a id="play_routes"></a>

## play_routes

<pre>
load("@rules_play_routes//play-routes:play-routes.bzl", "play_routes")

play_routes(<a href="#play_routes-name">name</a>, <a href="#play_routes-srcs">srcs</a>, <a href="#play_routes-generate_forwards_router">generate_forwards_router</a>, <a href="#play_routes-generate_reverse_router">generate_reverse_router</a>, <a href="#play_routes-include_play_imports">include_play_imports</a>,
            <a href="#play_routes-namespace_reverse_router">namespace_reverse_router</a>, <a href="#play_routes-routes_generator">routes_generator</a>, <a href="#play_routes-routes_imports">routes_imports</a>, <a href="#play_routes-scala_version">scala_version</a>)
</pre>

Compiles Play routes files templates to Scala sources files.

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="play_routes-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/concepts/labels#target-names">Name</a> | required |  |
| <a id="play_routes-srcs"></a>srcs |  Play routes files   | <a href="https://bazel.build/concepts/labels">List of labels</a> | required |  |
| <a id="play_routes-generate_forwards_router"></a>generate_forwards_router |  Whether the forward router should be generated. Setting to false may help generate only the reverse routes   | Boolean | optional |  `True`  |
| <a id="play_routes-generate_reverse_router"></a>generate_reverse_router |  Whether the reverse router should be generated. Setting to false may reduce compile times if it's not needed.   | Boolean | optional |  `False`  |
| <a id="play_routes-include_play_imports"></a>include_play_imports |  If true, include the imports the Play project includes by default.   | Boolean | optional |  `False`  |
| <a id="play_routes-namespace_reverse_router"></a>namespace_reverse_router |  Whether the reverse router should be namespaced. Useful if you have many routers that use the same actions.   | Boolean | optional |  `False`  |
| <a id="play_routes-routes_generator"></a>routes_generator |  The full class of the routes generator, e.g., `play.routes.compiler.InjectedRoutesGenerator`   | String | optional |  `""`  |
| <a id="play_routes-routes_imports"></a>routes_imports |  Additional imports to import to the Play routes   | List of strings | optional |  `[]`  |
| <a id="play_routes-scala_version"></a>scala_version |  The Scala version to use for this target, e.g., '3', '2.13'.   | String | optional |  `""`  |


