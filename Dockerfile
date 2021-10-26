ARG version=latest
# This image is used for rust app development and building.
# Included:
# - Builiding deps;
FROM rust:${version}-alpine as build

WORKDIR /src

RUN apk add --no-cache \
    openssl-dev \
    musl-dev
