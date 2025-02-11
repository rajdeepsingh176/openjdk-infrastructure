#!/bin/bash
set -eu
export TARGET_OS=windows
export ARCHITECTURE=x64
export JAVA_TO_BUILD=jdk8
export VARIANT=hotspot
export JDK7_BOOT_DIR=/cygdrive/c/openjdk/jdk7
export PATH=/usr/bin/:$PATH
/cygdrive/c/openjdk-build/makejdk-any-platform.sh -J /cygdrive/c/openjdk/jdk-8 --configure-args "--disable-ccache --with-toolchain-version=2013" --freetype-version 2.5.3 -v jdk8u
