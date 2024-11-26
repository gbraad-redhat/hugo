FROM registry.fedoraproject.org/fedora:40 AS downloader


RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.92.2/hugo_0.92.2_Linux-64bit.tar.gz -o hugo.tar.gz \
    && tar -zxvf hugo.tar.gz


FROM registry.fedoraproject.org/fedora:40

COPY --from=downloader /hugo /usr/bin

RUN mkdir -p /workspace
VOLUME /workspace
WORKDIR /workspace

CMD ["hugo"]