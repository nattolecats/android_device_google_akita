#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/akita/aosp_akita.mk)
#$(call inherit-product, device/google/zuma/lineage_common.mk)

#include device/google/akita/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8a
PRODUCT_NAME := lineage_akita

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Evolution X flags
TARGET_IS_PIXEL := true
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := $(TARGET_SCREEN_WIDTH)
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=akita \
    PRIVATE_BUILD_DESC="akita-user 14 UD2A.231203.054 11501734 release-keys"

BUILD_FINGERPRINT := google/akita/akita:14/UD2A.231203.054/11501734:user/release-keys

#$(call inherit-product, vendor/google/akita/akita-vendor.mk)
