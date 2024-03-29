#
# Copyright (C) 2020 The LineageOS Project
#
# Copyright (C) 2021 DerpFest
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Derpfest stuff
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Official-ify
DERP_BUILDTYPE := Official

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="cheetah-user 14 UQ1A.231205.015 11084887 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/cheetah/cheetah:14/UQ1A.231205.015/11084887:user/release-keys"
