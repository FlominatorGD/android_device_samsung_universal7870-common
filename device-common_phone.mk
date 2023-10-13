#
# Copyright (C) 2019-2023 The LineageOS Project
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

LOCAL_PATH := device/samsung/universal7870-common
TARGET_TABLET_LIST := gtaxlwifi gtaxllte gtanotexlwifi gtanotexllte

# exclude tablets
ifneq ($(filter $(TARGET_DEVICE),$(TARGET_TABLET_LIST)),)

PRODUCT_PACKAGES += \
    android.hardware.radio@1.2.vendor \
    android.hardware.radio@1.3.vendor \
    android.hardware.radio@1.4.vendor \
    android.hardware.radio@1.5.vendor \
    android.hardware.radio.config@1.0.vendor \
    android.hardware.radio.config@1.1.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    secril_config_svc

# Ramdisk
PRODUCT_PACKAGES += \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc \
    init.baseband.rc

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.0.vendor

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service.samsung \
    com.android.future.usb.accessory
    
# call the proprietary setup
$(call inherit-product, vendor/samsung/universal7870-common/universal7870-common-vendor.mk)

endif
