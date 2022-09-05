# Build Instructions

```
$ make       # Build Coq files (customize makefile if you need)
$ make serve # Install jsCoq and open a web server
```

# Tweaks from official distro

We have customized the following files from the oficial distro:

+ custom load of packages in `jscoq-agent.js`
+ custom paths in `jscoqdoc` binary

We default to the WebAssembly jsCoq version.

You may want to tweak more stuff too.

# TODO:

- tweak CSS?
