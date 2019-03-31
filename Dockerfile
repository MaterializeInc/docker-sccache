FROM alpine:3.9.2

ARG VERSION
ARG SHASUM

RUN apk add curl

RUN curl -L https://github.com/mozilla/sccache/releases/download/$VERSION/sccache-$VERSION-x86_64-unknown-linux-musl.tar.gz > sccache.tar.gz \
    && echo 'bbf2e67d5e030967f31283236ea57f68892f0c7b56681ae7bfe80cd7f47e1acc  sccache.tar.gz' | sha256sum -c - \
    && tar xf sccache.tar.gz \
    && mv sccache-$VERSION-x86_64-unknown-linux-musl/sccache /usr/local/bin/sccache \
    && rm -r sccache.tar.gz sccache-$VERSION-x86_64-unknown-linux-musl

RUN apk del curl

ENTRYPOINT ["/usr/local/bin/sccache"]