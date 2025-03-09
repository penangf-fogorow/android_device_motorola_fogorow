#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/fogorow

# OTA assert
TARGET_OTA_ASSERT_DEVICE := fogorow

# inherit from common mt6768-common
-include device/motorola/mt6768-common/BoardConfigCommon.mk

# Inherit the proprietary files
include vendor/motorola/fogorow/BoardConfigVendor.mk
