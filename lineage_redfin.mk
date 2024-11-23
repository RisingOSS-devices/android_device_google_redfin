#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
RISING_MAINTAINER := honokascape

# Rising Flags
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 765G 5G (7 nm)" \
    RisingMaintainer="Don Johan Liebert"

# Targets
TARGET_ENABLE_BLUR := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_HAS_UDFPS := false

# GMS
WITH_GMS := true

# Inherit device configuration
$(call inherit-product, device/google/redfin/aosp_redfin.mk)
$(call inherit-product, device/google/redbull/lineage_common.mk)

include device/google/redfin/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5
PRODUCT_NAME := lineage_redfin

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=redfin \
    PRIVATE_BUILD_DESC="redfin-user 14 UP1A.231105.001.B2 11260668 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:14/UP1A.231105.001.B2/11260668:user/release-keys

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)
