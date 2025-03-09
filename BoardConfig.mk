#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/fogorow

# OTA assert
TARGET_OTA_ASSERT_DEVICE := fogorow

## vendor_boot modules
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD += $(strip $(shell cat $(DEVICE_PATH)/modules.load.vendor_boot))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES += $(addprefix $(KERNEL_PATH)/fogorow/vendor_boot-modules/, $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD))

## recovery modules
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
RECOVERY_MODULES += $(addprefix $(KERNEL_PATH)/fogorow/vendor_boot-modules/, $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD))

## Prevent duplicated entries (to solve duplicated build rules problem)
BOARD_VENDOR_RAMDISK_KERNEL_MODULES += $(sort $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES) $(RECOVERY_MODULES))

## vendor modules
BOARD_VENDOR_KERNEL_MODULES_LOAD += $(strip $(shell cat $(DEVICE_PATH)/modules.load.vendor))
BOARD_VENDOR_KERNEL_MODULES += $(wildcard $(KERNEL_PATH)/fogorow/vendor-modules/*.ko)

# inherit from common mt6768-common
-include device/motorola/mt6768-common/BoardConfigCommon.mk

# Inherit the proprietary files
include vendor/motorola/fogorow/BoardConfigVendor.mk
