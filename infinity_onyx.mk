#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Infinity-X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from onyx device
$(call inherit-product, device/xiaomi/onyx/device.mk)

# Infinity-X Flags
WITH_GAPPS := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ICONS := true
TARGET_SUPPORTS_BLUR := true
TARGET_INCLUDE_ACCORD := false
INFINITY_MAINTAINER := "Sachin_07"
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := infinity_onyx
PRODUCT_DEVICE := onyx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 25053PC47G
PRODUCT_SYSTEM_NAME := onyx_global
PRODUCT_SYSTEM_DEVICE := onyx

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="onyx_global-user 15 AQ3A.250107.001 OS2.0.204.0.VOLMIXM release-keys" \
    BuildFingerprint=POCO/onyx_global/onyx:15/AQ3A.250107.001/OS2.0.204.0.VOLMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
