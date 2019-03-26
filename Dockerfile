FROM golang:1.12-stretch as build
RUN go get -u github.com/square/certigo && \
  mv /go/bin/certigo /opt/

FROM golang:1.12-stretch
RUN groupadd -r utils && \
  useradd -r -s /bin/false -g utils utils
WORKDIR /opt
USER utils
COPY --from=build /opt/certigo .