# Leiningen GraalVM native builder image

Docker image to build GraalVM native images out of your Clojure project. Has all the tools (GraalVM, native-image, lein) ready to go.

## Where

* `valerauko/clojure-graal:latest`
* `valerauko/clojure-graal:openjdk-11`

## Usage

Normally you'd use it as the first stage for a [multi-stage build](https://docs.docker.com/develop/develop-images/multistage-build/).

Mount/add your stuff and then run `lein native-image`.

You'll have to properly configure the build options in your project.clj.

### Example

Using https://github.com/yogthos/graal-web-app-example after adding the `--no-fallback` option:

```
$ pwd
/home/valerauko/graal-web-app-example

$ docker run --rm -v $(pwd):/build -w /build valerauko/clojure-graal
Retrieving io/taylorwood/lein-native-image/0.3.0/lein-native-image-0.3.0.pom from clojars
Retrieving nrepl/lein-nrepl/0.3.2/lein-nrepl-0.3.2.pom from clojars
...
Retrieving nrepl/nrepl/0.6.0/nrepl-0.6.0.jar from clojars
[/build/target/app:72]    classlist:   4,874.38 ms
[/build/target/app:72]        (cap):     600.34 ms
[/build/target/app:72]        setup:   1,613.00 ms
[/build/target/app:72]   (typeflow):  52,133.25 ms
[/build/target/app:72]    (objects):  15,351.00 ms
[/build/target/app:72]   (features):   1,445.46 ms
[/build/target/app:72]     analysis:  70,501.62 ms
[/build/target/app:72]     (clinit):     411.29 ms
[/build/target/app:72]     universe:   1,402.65 ms
[/build/target/app:72]      (parse):   2,239.76 ms
[/build/target/app:72]     (inline):   3,616.38 ms
[/build/target/app:72]    (compile):  24,625.46 ms
[/build/target/app:72]      compile:  31,589.31 ms
[/build/target/app:72]        image:  11,673.27 ms
[/build/target/app:72]        write:   1,273.78 ms
[/build/target/app:72]      [total]: 123,193.21 ms
Created native image /build/target/app
```
