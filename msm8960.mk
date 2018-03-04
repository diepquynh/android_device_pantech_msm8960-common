#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL qcomhrc devices, and
# are also specific to qcomhrc devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Live Wallpapers
PRODUCT_PACKAGES += \
	LiveWallpapers \
	LiveWallpapersPicker \
	VisualizationWallpapers \
	librs_jni

# Audio
PRODUCT_PACKAGES += \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler \
	audio_effects.conf \
	audio_policy.conf \
	mixer_paths.xml

# Voice processing
PRODUCT_PACKAGES += \
	libqcomvoiceprocessing

# QOS
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/qosmgr_rules.xml:system/etc/qosmgr_rules.xml

# Media
PRODUCT_PACKAGES += \
	media_codecs.xml \
	media_profiles.xml

PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Graphics
PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	hwcomposer.msm8960 \
	gralloc.msm8960 \
	copybit.msm8960 \
	memtrack.msm8960

# Codecs
PRODUCT_PACKAGES += \
	libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libstagefrighthw \
	libc2dcolorconvert

# Camera
PRODUCT_PACKAGES += \
	libxml2	

# WiFi
PRODUCT_PACKAGES += \
	libwpa_client \
	hostapd \
	dhcpcd.conf \
	wpa_supplicant \
	wpa_supplicant.conf \
	libwfcu \
	wcnss_service \
	hostapd_default.conf \
	wpa_supplicant_overlay.conf \
	p2p_supplicant_overlay.conf \
	WCNSS_qcom_cfg.ini \
	WCNSS_qcom_wlan_nv.bin \
	WCNSS_cfg.dat

# Bluetooth
PRODUCT_PACKAGES += \
	hci_qcomm_init

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.bt.hci_transport=smd

# Kickstart
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/kickstart_checker.sh:system/etc/kickstart_checker.sh

# Root files
PRODUCT_PACKAGES += \
	fstab.qcom \
	init.pantech.usb.rc \
	init.pantech.usb.sh \
	init.qcom.rc \
	init.qcom.sh \
	init.qcom.bt.sh \
	init.qcom.efs.sync.sh \
	init.qcom.fm.sh \
	init.qcom.post_boot.sh \
	init.recovery.qcom.rc \
	ueventd.qcom.rc

# Charger
PRODUCT_PACKAGES += \
	charger_res_images \
	charger

# Lights
PRODUCT_PACKAGES += \
	lights.qcom

# Prebuilt kl and kcm keymaps
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
	$(LOCAL_PATH)/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	$(LOCAL_PATH)/keylayout/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
	$(LOCAL_PATH)/keylayout/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm \
	$(LOCAL_PATH)/keylayout/touch_dev.idc:system/usr/idc/touch_dev.idc \
	$(LOCAL_PATH)/keylayout/touch_dev.kl:system/usr/keylayout/touch_dev.kl

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# GPS configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf

# EGL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=196608

# Keystore
PRODUCT_PACKAGES += \
	keystore.msm8960

# Virtual hardware keys
PRODUCT_PROPERTY_OVERRIDES += \
	qemu.hw.mainkeys=0

# QRNGD
PRODUCT_PACKAGES += qrngd

# RIL
###############################################################################
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.apm_sim_not_pwdn=1

# Our RIL class
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.ril_class=TRIL \
	ro.ril.telephony.mqanelements=5

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.call_ring.multiple=0
###############################################################################

# Miscellanous
###############################################################################

# Upto 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += persist.hwc.mdpcomp.enable=true

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck

PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
	debug.egl.recordable.rgba8888=1

ADDITIONAL_BUILD_PROPERTIES += \
	persist.sys.dalvik.multithread=true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qc.sensors.wl_dis=true \
	ro.qualcomm.sensors.smd=true

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.debuggable=1 \
	persist.sys.root_access=1 \
	persist.service.adb.enable=1

PRODUCT_PACKAGES += \
	fetch-swv

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab \
###############################################################################
$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)
