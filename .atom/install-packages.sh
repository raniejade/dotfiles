#! /bin/bash

PACKAGES=(
    seti-ui
    seti-syntax
    minimap
    pigments
    emmet
)

for PACKAGE in ${PACKAGES[@]}; do
    apm install $PACKAGE
done
