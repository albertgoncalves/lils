#!/usr/bin/env bash

set -eu

path="${WD}/out/$(basename "$1" ".ly")"

timidity "${path}.midi" -Ow -o "${path}.wav"
aplay "${path}.wav" &
