#!/usr/bin/env bash

#docker build --platform linux/x86_64 -t ghcr.io/sleepdeprecation/mastodon:latest ./
docker buildx build -t ghcr.io/sleepdeprecation/mastodon:latest ./
