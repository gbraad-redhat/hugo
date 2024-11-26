Hugo
====

## Build

```shell
$ podman build -t hugo -f Containerfile .
```

## Usage

```shell
$ podman run --rm -v $PWD:/workspace hugo
```
