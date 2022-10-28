#!/bin/bash
#
# Copyright (C) 2017-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
#
# HavocOS | LineageOS: [PATCH] NetworkStack: TcpSocketTracker: Opt-out for TCP info parsing on legacy kernels.
# It fixes E TcpSocketTracker: AAAAAAAAAAAAAAAAAA...

# This feature requires netlink features that are unsupported on
# kernel versions lower than 4.4, therefore opt-out for it in such
# cases and avoid constantly crashing TcpSocketTracker.

echo "HavocOS | LineageOS: [PATCH] NetworkStack: TcpSocketTracker: Opt-out for TCP info parsing on legacy kernels"
echo "patch kanged from ArrowOS https://github.com/ArrowOS/android_packages_modules_NetworkStack/commit/19bbd6fb49222c3849e8f9f8f5f2c56c61bdfc81.patch"
mkdir -p device/samsung/universal7870-common/patches/packages_modules_NetworkStack
curl https://github.com/ArrowOS/android_packages_modules_NetworkStack/commit/19bbd6fb49222c3849e8f9f8f5f2c56c61bdfc81.patch > 'device/samsung/universal7870-common/patches/packages_modules_NetworkStack/0001-TcpSocketTracker-Opt-out-for-TCP-info-parsing-on-leg.patch'
patch -d packages/modules/NetworkStack -p1 -n < device/samsung/universal7870-common/patches/packages_modules_NetworkStack/0001-TcpSocketTracker-Opt-out-for-TCP-info-parsing-on-leg.patch
