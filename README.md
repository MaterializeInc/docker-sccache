# docker-sccache

A Docker image that provides [sccache].

  * [View image on Docker Hub](https://hub.docker.com/r/materialize/sccache)
  * [View releases](https://hub.docker.com/r/materialize/sccache/tags)

## Usage

Use as part of a multi-stage build:

```Dockerfile
COPY --from=materialize/sccache:latest /usr/local/bin/sccache /usr/local/bin/sccache
```

[sccache]: https://github.com/mozilla/sccache