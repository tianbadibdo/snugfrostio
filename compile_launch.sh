#!/usr/bin/env bash
set -e
LIB="bounded-forge.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/tianbadibdo/snugfrostio/releases/download/eager-delta-bright-harbor/bounded-forge.a"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
