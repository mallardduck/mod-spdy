#!/bin/bash -ex
# Copyright (c) 2012 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#
# Buildbot annotator script for the FYI waterfall builder.
# Compiler and zip the build.

# SHERIFF: there should be no need to disable this bot.
# The FYI waterfall does not close the tree.


BB_SRC_ROOT="$(cd "$(dirname $0)/../.."; pwd)"
. "${BB_SRC_ROOT}/build/android/buildbot_functions.sh"

bb_baseline_setup "$BB_SRC_ROOT" "$@"
bb_install_build_deps "$BB_SRC_ROOT"
bb_compile
bb_zip_build
