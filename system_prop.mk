# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.force_voice_config=wide \
    ro.config.media_vol_steps=25

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/efs/bluetooth/bt_addr

# The new CAF code defaults to MCT HAL
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=rome

# Dalvik/Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Options for userspace lmkd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.low=1001 \
    ro.lmk.medium=800 \
    ro.lmk.critical=0 \
    ro.lmk.critical_upgrade=false \
    ro.lmk.upgrade_pressure=100 \
    ro.lmk.downgrade_pressure=100 \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.kill_timeout_ms=100 \
    ro.lmk.use_minfree_levels=true

# SurfaceFlinger
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1

# Disable more Codec2.0 components
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0

# ro.product.first_api_level indicates the first api level the device has commercially launched on.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=26

# sdcardfs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# FIFO UI scheduling
PRODUCT_PROPERTY_OVERRIDES += \
    sys.use_fifo_ui=1

# Do not update the recovery image
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.recovery_update=false

# Set fdsan to the warn_once severity level
PRODUCT_PROPERTY_OVERRIDES += \
    debug.fdsan=warn_once

# Fix for echo in calls
PRODUCT_PROPERTY_OVERRIDES += \
    audio_hal.disable_two_mic=false
#
#rild.libargs=-d /dev/umts_ipc0 \
#rild.libpath=/system/lib64/libsec-ril.so \
#rild.libpath2=/system/lib64/libsec-ril-dsds.so \
#vendor.sec.rild.libpath=/vendor/lib64/libsec-ril.so \
#
# Radio
PRODUCT_PROPERTY_OVERRIDES += \
		vendor.sec.rild.libpath=/vendor/lib64/libsec-ril.so \
		vendor.sec.rild.libpath2=/vendor/lib64/libsec-ril-dsds.so \
		persist.radio.sib16_support=1 \
		ro.telephony.default_network=9 \
		ro.ril.gprsclass=10 \
		ro.ril.hsxpa=1 \
		ro.debug_level=0x494d \
		ro.ril.telephony.mqanelements=6 \
		ro.telephony.mms_data_profile=5 \
		telephony.lteOnGsmDevice=1 \
		telephony.lteOnCdmaDevice=0 \
		ro.telephony.get_imsi_from_sim=true

# SDcardfs
PRODUCT_PROPERTY_OVERRIDES += \
		ro.sys.sdcardfs=false
