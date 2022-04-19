#!/bin/bash

# This script will setup the Chromium source.
CHROMIUM_VERSION=$(grep 'PORTVERSION=\t*' Makefile | sed 's/PORTVERSION=\t//')
#echo $CHROMIUM_VERSION
mkdir -p build/download_cache
curl -o build/download_cache/chromium-$CHROMIUM_VERSION.tar.xz https://commondatastorage.googleapis.com/chromium-browser-official/chromium-$CHROMIUM_VERSION.tar.xz
rm -rf build/src
mkdir -p build/src
tar -xf build/download_cache/chromium-$CHROMIUM_VERSION.tar.xz -C build/src --strip-components=1
