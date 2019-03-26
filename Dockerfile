FROM golang:1.12-stretch as build
RUN go get -u github.com/square/certigo && \
  mv /go/bin/certigo /opt/

FROM ubuntu:18.04
RUN groupadd -r utils && \
  useradd -r -s /bin/false -g utils utils
WORKDIR /opt
USER utils
COPY --from=build /opt/certigo .