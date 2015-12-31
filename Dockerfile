# Docker image for the ecr plugin
#
#     docker build --rm=true -t plugins/drone-ecr .

FROM gliderlabs/alpine:3.2
RUN apk add -U ca-certificates && rm -rf /var/cache/apk/*

ADD drone-ecr /bin/
ENTRYPOINT ["/bin/drone-ecr"]
