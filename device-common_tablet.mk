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

PRODUCT_CHARACTERISTICS := tablet

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service
    
# 32-bit OSS libsecnativefeature
PRODUCT_PACKAGES += \
    libsecnativefeature

# Tablet Audio    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio-tablet/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio-tablet/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_rev00.xml \
    $(LOCAL_PATH)/configs/audio-tablet/mixer_paths_rev07.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_rev07.xml \
    $(LOCAL_PATH)/configs/audio-tablet/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio-tablet/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml
    
ifneq ($(filter gtaxlwifi gtanotexlwifi, $(TARGET_DEVICE)),)
# Radio
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
endif

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor

# Audio hal
PRODUCT_PACKAGES += \
    audio.primary.exynos7870_32 \
    audio_amplifier.exynos7870_32

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Properties
-include $(LOCAL_PATH)/vendor_tablet_prop.mk

# Common
$(call inherit-product, $(LOCAL_PATH)/device-common.mk)

# Call the proprietary setup
$(call inherit-product, vendor/samsung/gtaxl-common/gtaxl-common-vendor.mk)
