#!/bin/bash

export USE_CCACHE=1
export CCACHE_DIR=/jenkinsslave/OmniROM/omni/5.1/.ccache
export BUILDTYPE_NIGHTLY=1

DEVICE=$*

cd /jenkinsslave/OmniROM/omni/5.1/
. build/envsetup.sh
repo sync -j 48
rm -rf out/target
brunch $DEVICE
