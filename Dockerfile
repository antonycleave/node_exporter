ARG GO_VERS=1.23.2
FROM  cimg/go:$GO_VERS
WORKDIR /build
COPY $PWD /build 
RUN sudo chown -R circleci:circleci /build
RUN make common-build && \
    make common-tarball
