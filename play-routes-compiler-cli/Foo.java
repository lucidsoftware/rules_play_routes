// TODO: add scala_export support to rules_jvm_external, so we can just use
// that and get rid of this dummy file. We include this file so we can use
// deps instead of runtime_deps. runtime_deps causes the pom.xml to list things
// as runtime dependencies rather than compile time.