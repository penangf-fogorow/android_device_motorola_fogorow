#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common device makefile.
$(call inherit-product, device/motorola/mt6768-common/device.mk)

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    libchrome.vendor

# Inherit the proprietary files
$(call inherit-product, vendor/motorola/fogorow/fogorow-vendor.mk)
