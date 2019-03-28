FROM golang:1.12-stretch as build
RUN go get -u github.com/square/certigo && \
  mv /go/bin/certigo /opt/

FROM ubuntu:18.04
RUN groupadd -r utils && \
  useradd -r -s /bin/false -g utils utils && \
  apt-get update && \
  apt-get -y install jq
WORKDIR /opt
USER utils
COPY --from=build /opt/certigo .
COPY check-certificate-validity.sh .