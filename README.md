# Leiningen GraalVM native builder image

Docker image to build GraalVM native images out of your Clojure project. Has all the tools (GraalVM, native-image, lein) ready to go.

## Where

* `valerauko/clojure-graal:latest`
* `valerauko/clojure-graal:openjdk-11`

## Usage

Normally you'd use it as the first stage for a [multi-stage build](https://docs.docker.com/develop/develop-images/multistage-build/).

Mount/add your stuff and then run `lein native-image`.
