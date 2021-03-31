#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from pine device
$(call inherit-product, device/xiaomi/pine/device.mk)

# Inherit some LineageOS stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := fluid_pine
PRODUCT_DEVICE := pine
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7A
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="pine" \
    TARGET_DEVICE="pine"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="pine-user 10 QKQ1.191014.001 V12.0.1.0.QCMMIXM release-keys"

# Fluid flags
PRODUCT_PRODUCT_PROPERTIES += \
	ro.fluid.maintainer=YaAlex \
	ro.fluid.cpu=SDM439

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/pine/pine:10/QKQ1.191014.001/V12.0.1.0.QCMMIXM:user/release-keys
