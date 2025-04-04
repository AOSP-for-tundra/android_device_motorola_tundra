#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit some common Pixel Project stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Pixel Project flags
CUSTOM_BUILDTYPE := UNOFFICIAL
CUSTOM_MAINTAINER := 0mar

# Gapps Flag
WITH_GMS := true

# Extras
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := aosp_tundra
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tundra_g-user 14 U1SJS34.2-92-10-2 263481-6419b2 release-keys" \
    BuildFingerprint=motorola/tundra_g/tundra:14/U1SJS34.2-92-10-2/263481-6419b2:user/release-keys \
    DeviceProduct=tundra_g
