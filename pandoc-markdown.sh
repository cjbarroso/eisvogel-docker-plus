#!/usr/bin/env bash
TERADOC_IMAGE=terapandoc
docker run \
    --volume $(pwd):/data \
    --user $(id -u):$(id -g) \
    ${TERADOC_IMAGE} \
    --data-dir=/opt/pandoc \
    --from markdown --template eisvogel \
    --filter pandoc-latex-environment --listings \
    -o $2 $1
