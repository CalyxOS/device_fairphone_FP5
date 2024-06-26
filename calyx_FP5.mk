#
# SPDX-FileCopyrightText: 2023-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit from FP5 device
$(call inherit-product, device/fairphone/FP5/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := calyx_FP5
PRODUCT_DEVICE := FP5
PRODUCT_BRAND := Fairphone
PRODUCT_MODEL := FP5
PRODUCT_MANUFACTURER := Fairphone

PRODUCT_SYSTEM_NAME := FP5

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Fairphone/FP5/FP5:13/TKQ1.230127.002/TT4H:user/release-keys
