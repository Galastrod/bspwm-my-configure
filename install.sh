#!/bin/bash

set -e

cd "$(dirname "$0")"

mv -T ~/.config/bspwm ~/.config/bspwm-old 2>/dev/null || true
cp -r ./bspwm ~/.config/bspwm

