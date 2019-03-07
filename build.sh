#!/bin/bash
set -euo pipefail

VERSION=$1

# docker run --rm -it -v /tmp:/data golang:1-stretch /bin/bash -c "go get -u github.com/square/certigo && mv /go/bin/certigo /data/"

# cp /tmp/certigo .

# docker build -t serbangilvitu/tls-utils:${VERSION} .

# git clone https://github.com/trimstray/htrace.sh.git
# cd htrace.sh/build
# ./build.sh
# rm -rf htrace.sh

docker run --rm -it -v /tmp:/data golang:1-stretch /bin/bash -c "go get -u github.com/square/certigo && mv /go/bin/certigo /data/"

cp /tmp/certigo .

docker build -t serbangilvitu/tls-utils:${VERSION} .
rm certigo

