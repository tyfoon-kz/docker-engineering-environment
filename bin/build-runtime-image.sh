#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-ecommerce-php:runtime}"
DOCKERFILE="${DOCKERFILE:-docker/php/Dockerfile}"
CONTEXT="${CONTEXT:-.}"
TARGET="${TARGET:-runtime}"

echo "Building PHP runtime image: ${IMAGE_NAME}"
echo "Dockerfile: ${DOCKERFILE}"
echo "Build target: ${TARGET}"
echo "Build context: ${CONTEXT}"

docker build \
  --target "${TARGET}" \
  -t "${IMAGE_NAME}" \
  -f "${DOCKERFILE}" \
  "${CONTEXT}"

echo "Build command finished for ${IMAGE_NAME}"
