# Build Instructions

First you need to setup jsCoq and related tools:
```
make node_modules    # Install jsCoq and other tools
```

once that is done, you can work with your files as:

```
$ make       # Build Coq files (customize makefile if you need)
$ make serve # Open a web server with the jsCoq files
```

Note that `make serve` doesn't need to be restarted after a regular
`make`.

# Tweaks from official distro

We have customized the following files from the oficial distro:

+ custom load of packages in `jscoq-agent.js`
+ custom paths in `jscoqdoc` binary

We default to the WebAssembly jsCoq version, to update that set the
`backend:` parameter in the `jscoq-agent` file to `js` or use the
query `?backend=wa` in the jsCoq URL.

You may want to tweak more stuff too.

# Licensing

To simplify the use of this template, it is made available with no restrictions under the `Unlicense` license (see [`LICENSE`](LICENSE)).
Nevertheless, users are encouraged to contribute improvements back to this repository.

# TODO:

- tweak CSS?
