#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a56x device
$(call inherit-product, device/samsung/a56x/device.mk)

PRODUCT_DEVICE := a56x
PRODUCT_NAME := twrp_a56x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A566B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a56xnaxx-user 15 AP3A.240905.015.A2 A566BXXS4AYE5 test-keys"

BUILD_FINGERPRINT := samsung/a56xnaxx/a56x:15/AP3A.240905.015.A2/A566BXXS4AYE5:user/test-keys
