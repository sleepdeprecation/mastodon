#!/usr/bin/env bash

set +x +e

TODAY=$(date +%Y-%m-%d)
REPO="ghcr.io/sleepdeprecation/mastodon"

docker buildx build -t "${REPO}:${TODAY}" ./

docker tag "${REPO}:${TODAY}" "${REPO}:latest"

docker push --all-tags "${REPO}"
