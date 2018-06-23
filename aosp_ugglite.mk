#
# Copyright 2016 The AOSP-OMS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ugglite device
$(call inherit-product, device/xiaomi/ugglite/device.mk)

# Inherit some common AOSP-OMS stuff.
$(call inherit-product, vendor/aosp/common.mk)

PRODUCT_DEVICE := ugglite
PRODUCT_BRAND := Xiaomi
PRODUCT_NAME := aosp_ugglite
BOARD_VENDOR := Xiaomi
PRODUCT_MODEL := Redmi Note 5A
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR := Xiaomi

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=xiaomi/ugglite/ugglite:7.1.2/N2G47H/V9.1.2.0.NDFMIEI:user/release-keys \
    PRIVATE_BUILD_DESC="ugglite-user 7.1.2 N2G47H V9.1.2.0.NDFMIEI release-keys"
endif

# Unofficial build ID
TARGET_UNOFFICIAL_BUILD_ID := Mbtt