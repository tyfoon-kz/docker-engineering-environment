#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-ecommerce-php:lesson04}"
DOCKERFILE="${DOCKERFILE:-docker/php/Dockerfile}"
CONTEXT="${CONTEXT:-.}"

echo "Building PHP training image: ${IMAGE_NAME}"
echo "Dockerfile: ${DOCKERFILE}"
echo "Build context: ${CONTEXT}"

docker build \
  -t "${IMAGE_NAME}" \
  -f "${DOCKERFILE}" \
  "${CONTEXT}"

echo "Build command finished for ${IMAGE_NAME}"
