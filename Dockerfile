# Minimal Docker image for QUAST using Alpine base
FROM alpine:latest

# install QUAST
RUN apk update && \
    apk add --no-cache bash binutils gcc make musl-dev openjdk21-jdk perl perl-time-hires py3-pip python3 R zlib-dev && \
    pip install --no-cache-dir --break-system-packages "git+https://github.com/ablab/quast.git@quast_5.3.0"
