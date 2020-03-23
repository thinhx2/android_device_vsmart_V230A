#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Vsmart Bee 3 device
$(call inherit-product, device/vsmart/V230A/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_V230A
PRODUCT_DEVICE := V230A
PRODUCT_BRAND := vsmart
PRODUCT_MODEL := Vsmart Bee 3
PRODUCT_MANUFACTURER := vsmart

# Product characteristics
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 720

# Build info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vndk.version=28 \
    ro.skia.ignore_swizzle=true \
    ro.config.avoid_gfx_accel=true \
    ro.radio.apn_force_cognitive=true

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-vsmart
