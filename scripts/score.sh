#!/usr/bin/env bash

set -eu

path="${WD}/out/$(basename "$1" ".ly")"

cp "${WD}/src/page.ly" "${WD}/out/"
cp "$1" "${path}.ly"

lilypond -o "${WD}/out" -dbackend=eps -ddelete-intermediate-files -dcrop \
    -dinclude-eps-fonts -dno-gs-load-fonts -dpixmap-format=pngalpha --png \
    -dresolution=300 \
    "${path}.ly"
feh -B gray "${path}.cropped.png" &
