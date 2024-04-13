#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ruby device
$(call inherit-product, device/xiaomi/chopin/device.mk)

PRODUCT_DEVICE := chopin
PRODUCT_NAME := twrp_chopin
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := chopin
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_chopin-user 12 SP1A.210812.016 V14.0.5.0.TKPIDXM release-keys"

BUILD_FINGERPRINT := Redmi/chopin/chopin:12/SP1A.210812.016/V14.0.5.0.TKPIDXM:user/release-keys
