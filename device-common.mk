#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

# Inherit from common
$(call inherit-product, device/samsung/msm8916-common/msm8916.mk)

# Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/j5-common/j5-common-vendor.mk)

DEVICE_PATH := device/samsung/j5-common

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
TARGET_SCREEN_DENSITY := 320

# Proprieties
-include $(DEVICE_PATH)/system_prop.mk

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc

# Inhert dalvik heap values from aosp
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
