#!/usr/bin/env bash

set -x -e

TODAY=$(date +%Y-%m-%d)
REPO="ghcr.io/sleepdeprecation/mastodon"
REPO_STREAMING="ghcr.io/sleepdeprecation/mastodon-streaming"

docker buildx build -t "${REPO}:${TODAY}" ./
docker tag "${REPO}:${TODAY}" "${REPO}:latest"

docker buildx build -t "${REPO_STREAMING}:${TODAY}" -f streaming/Dockerfile .
docker tag "${REPO_STREAMING}:${TODAY}" "${REPO_STREAMING}:latest"

docker push --all-tags "${REPO}"
docker push --all-tags "${REPO_STREAMING}"
