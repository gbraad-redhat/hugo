Fedora image for Hugo-based generation
======================================


This Fedora container image contains:

  - hugo: https://github.com/gohugoio/hugo  
    The world’s fastest framework for building websites


## Usage instructions
Start the container in the folder that contains your blog source

```bash
$ podman run --rm -v $PWD:/workspace hugo
```

This will generate a `public` output.


## Build container

```bash
$ podman build -t hugo -f Containerfile .
```
