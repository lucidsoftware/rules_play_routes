<!-- Generated with Stardoc: http://skydoc.bazel.build -->

<a name="#play_routes"></a>

## play_routes

<pre>
play_routes(<a href="#play_routes-name">name</a>, <a href="#play_routes-generate_forwards_router">generate_forwards_router</a>, <a href="#play_routes-generate_reverse_router">generate_reverse_router</a>, <a href="#play_routes-include_play_imports">include_play_imports</a>, <a href="#play_routes-namespace_reverse_router">namespace_reverse_router</a>, <a href="#play_routes-play_routes_compiler">play_routes_compiler</a>, <a href="#play_routes-routes_generator">routes_generator</a>, <a href="#play_routes-routes_imports">routes_imports</a>, <a href="#play_routes-srcs">srcs</a>)
</pre>

Compiles Play routes files templates to Scala sources files.

### Attributes

<table class="params-table">
  <colgroup>
    <col class="col-param" />
    <col class="col-description" />
  </colgroup>
  <tbody>
    <tr id="play_routes-name">
      <td><code>name</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#name">Name</a>; required
        <p>
          A unique name for this target.
        </p>
      </td>
    </tr>
    <tr id="play_routes-generate_forwards_router">
      <td><code>generate_forwards_router</code></td>
      <td>
        Boolean; optional
        <p>
          Whether the forward router should be generated. Setting to false may help generate only the reverse routes
        </p>
      </td>
    </tr>
    <tr id="play_routes-generate_reverse_router">
      <td><code>generate_reverse_router</code></td>
      <td>
        Boolean; optional
        <p>
          Whether the reverse router should be generated. Setting to false may reduce compile times if it's not needed.
        </p>
      </td>
    </tr>
    <tr id="play_routes-include_play_imports">
      <td><code>include_play_imports</code></td>
      <td>
        Boolean; optional
        <p>
          If true, include the imports the Play project includes by default.
        </p>
      </td>
    </tr>
    <tr id="play_routes-namespace_reverse_router">
      <td><code>namespace_reverse_router</code></td>
      <td>
        Boolean; optional
        <p>
          Whether the reverse router should be namespaced. Useful if you have many routers that use the same actions.
        </p>
      </td>
    </tr>
    <tr id="play_routes-play_routes_compiler">
      <td><code>play_routes_compiler</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">Label</a>; optional
      </td>
    </tr>
    <tr id="play_routes-routes_generator">
      <td><code>routes_generator</code></td>
      <td>
        String; optional
        <p>
          The full class of the routes generator, e.g., `play.routes.compiler.InjectedRoutesGenerator`
        </p>
      </td>
    </tr>
    <tr id="play_routes-routes_imports">
      <td><code>routes_imports</code></td>
      <td>
        List of strings; optional
        <p>
          Additional imports to import to the Play routes
        </p>
      </td>
    </tr>
    <tr id="play_routes-srcs">
      <td><code>srcs</code></td>
      <td>
        <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a>; required
        <p>
          Play routes files
        </p>
      </td>
    </tr>
  </tbody>
</table>


<a name="#PlayRoutesInfo"></a>

## PlayRoutesInfo

<pre>
PlayRoutesInfo(<a href="#PlayRoutesInfo-srcjar">srcjar</a>)
</pre>



### Fields

<table class="params-table">
  <colgroup>
    <col class="col-param" />
    <col class="col-description" />
  </colgroup>
  <tbody>
    <tr id="PlayRoutesInfo-srcjar">
      <td><code>srcjar</code></td>
      <td>
        <p>The source jar created by this target.</p>
      </td>
    </tr>
  </tbody>
</table>


