#
# Copyright (C) 2023 The Calyx Institute
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit from target device configuration.
$(call inherit-product, device/fairphone/FP5/device.mk)

PRODUCT_BRAND := Fairphone
PRODUCT_DEVICE := FP5
PRODUCT_MANUFACTURER := Fairphone
PRODUCT_MODEL := FP5
PRODUCT_NAME := calyx_FP5

PRODUCT_GMS_CLIENTID_BASE := android-alcatel

BUILD_FINGERPRINT := Fairphone/FP5/FP5:13/TKQ1.230127.002/TT45:user/release-keys
