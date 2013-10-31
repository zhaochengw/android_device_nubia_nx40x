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

# This file includes all definitions that apply to ALL ef51l devices, and
# are also specific to ef51l devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/nubia/nx40x/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Vold and Storage
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab
   
# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Media files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Snd_soc_msm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_2x_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_auxpcm \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_I2S:system/etc/snd_soc_msm/snd_soc_msm_I2S \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_I2SFusion:system/etc/snd_soc_msm/snd_soc_msm_I2SFusion \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_Sitar:system/etc/snd_soc_msm/snd_soc_msm_Sitar \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_Sitar_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm
 
 
# Thermald
PRODUCT_COPY_FILES += \
	 $(LOCAL_PATH)/configs/thermald-8064.conf:system/etc/thermald-8064.conf \
	 $(LOCAL_PATH)/configs/thermald-8064ab.conf:system/etc/thermald-8064ab.conf \
	 $(LOCAL_PATH)/configs/thermald-8930.conf:system/etc/thermald-8930.conf \
	 $(LOCAL_PATH)/configs/thermald-8930ab.conf:system/etc/thermald-8930ab.conf \
	 $(LOCAL_PATH)/configs/thermald-8960.conf:system/etc/thermald-8960.conf \
	 $(LOCAL_PATH)/configs/thermald-8960ab.conf:system/etc/thermald-8960ab.conf \
	 $(LOCAL_PATH)/configs/thermal-engine-8064.conf:system/etc/thermal-engine-8064.conf \
	 $(LOCAL_PATH)/configs/thermal-engine-8064ab.conf:system/etc/thermal-engine-8064ab.conf \
	 $(LOCAL_PATH)/configs/thermal-engine-8930.conf:system/etc/thermal-engine-8930.conf \
	 $(LOCAL_PATH)/configs/thermal-engine-8960.conf:system/etc/thermal-engine-8960.conf \

# Misc
PRODUCT_COPY_FILES += \
	 $(LOCAL_PATH)/configs/wfdconfig.xml:system/etc/wfdconfig.xml \
	 $(LOCAL_PATH)/configs/wiperconfig.xml:system/etc/wiperconfig.xml \
	 $(LOCAL_PATH)/configs/xtra_root_cert.pem:system/etc/xtra_root_cert.pem \
	 $(LOCAL_PATH)/configs/xtwifi.conf:system/etc/xtwifi.conf \

# WIFI
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
	$(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf


# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.ril.sh:root/init.qcom.ril.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init.nubia.ums_adb.sh:root/init.nubia.ums_adb.sh \
    $(LOCAL_PATH)/rootdir/init.nubia.ums.sh:root/init.nubia.ums.sh \
    $(LOCAL_PATH)/rootdir/init.nubia.usb.rc:root/init.nubia.usb.rc \
    $(LOCAL_PATH)/rootdir/charger:root/charger \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.poweroffcharge.rc:root/init.poweroffcharge.rc \
    $(LOCAL_PATH)/rootdir/poweroffcharge:root/sbin/poweroffcharge \
    $(LOCAL_PATH)/rootdir/res/images/0.png:root/res/images/0.png \
    $(LOCAL_PATH)/rootdir/res/images/1.png:root/res/images/1.png \
    $(LOCAL_PATH)/rootdir/res/images/2.png:root/res/images/2.png \
    $(LOCAL_PATH)/rootdir/res/images/3.png:root/res/images/3.png \
    $(LOCAL_PATH)/rootdir/res/images/4.png:root/res/images/4.png \
    $(LOCAL_PATH)/rootdir/res/images/5.png:root/res/images/5.png \
    $(LOCAL_PATH)/rootdir/res/images/6.png:root/res/images/6.png \
    $(LOCAL_PATH)/rootdir/res/images/7.png:root/res/images/7.png \
    $(LOCAL_PATH)/rootdir/res/images/8.png:root/res/images/8.png \
    $(LOCAL_PATH)/rootdir/res/images/9.png:root/res/images/9.png \
    $(LOCAL_PATH)/rootdir/res/images/percent.png:root/res/images/percent.png \
    $(LOCAL_PATH)/rootdir/res/images/power0.png:root/res/images/power0.png \
    $(LOCAL_PATH)/rootdir/res/images/power1.png:root/res/images/power1.png \
    $(LOCAL_PATH)/rootdir/res/images/power2.png:root/res/images/power2.png \
    $(LOCAL_PATH)/rootdir/res/images/power3.png:root/res/images/power3.png \
    $(LOCAL_PATH)/rootdir/res/images/power4.png:root/res/images/power4.png \
    $(LOCAL_PATH)/rootdir/res/images/power5.png:root/res/images/power5.png \
    $(LOCAL_PATH)/rootdir/res/images/power6.png:root/res/images/power6.png \
    $(LOCAL_PATH)/rootdir/res/images/power7.png:root/res/images/power7.png \
    $(LOCAL_PATH)/rootdir/res/images/power8.png:root/res/images/power8.png \
    $(LOCAL_PATH)/rootdir/res/images/power_error.png:root/res/images/power_error.png \
    $(LOCAL_PATH)/rootdir/res/images/power_full.png:root/res/images/power_full.png \
    $(LOCAL_PATH)/rootdir/res/images/power_off.png:root/res/images/power_off.png \
    $(LOCAL_PATH)/rootdir/res/images/power_prepare.png:root/res/images/power_prepare.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/rootdir/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png

# Qcom scripts
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/etc/hcidump.sh:system/etc/hcidump.sh \
	$(LOCAL_PATH)/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
	$(LOCAL_PATH)/etc/init.crda.sh:system/etc/init.crda.sh \
	$(LOCAL_PATH)/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
	$(LOCAL_PATH)/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	$(LOCAL_PATH)/etc/init.qcom.btdun.sh:system/etc/init.qcom.btdun.sh \
	$(LOCAL_PATH)/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
	$(LOCAL_PATH)/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
	$(LOCAL_PATH)/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	$(LOCAL_PATH)/etc/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	$(LOCAL_PATH)/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
	$(LOCAL_PATH)/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	$(LOCAL_PATH)/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
	$(LOCAL_PATH)/etc/init.qcom.sensor.sh:system/etc/init.qcom.sensor.sh \
	$(LOCAL_PATH)/etc/init.qcom.thermal_conf.sh:system/etc/init.qcom.thermal_conf.sh \
	$(LOCAL_PATH)/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
	$(LOCAL_PATH)/etc/usf_post_boot.sh:system/etc/usf_post_boot.sh

# Prebuilt keychars and keylayout
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
	$(LOCAL_PATH)/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
	$(LOCAL_PATH)/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
	$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
	$(LOCAL_PATH)/keylayout/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl \
	$(LOCAL_PATH)/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
	$(LOCAL_PATH)/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
	$(LOCAL_PATH)/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

# IDC files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/idc/qwerty.idc:system/usr/idc/qwerty.idc \
	$(LOCAL_PATH)/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
	$(LOCAL_PATH)/idc/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
	$(LOCAL_PATH)/idc/zte_cap_touchscreen.idc:system/usr/idc/zte_cap_touchscreen.idc

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
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# GPS configuration
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface

# NFC packages
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFC feature files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libI420colorconvert \
    hwcomposer.msm8960 \
    gralloc.msm8960 \
    copybit.msm8960

PRODUCT_PACKAGES += \
	alsa.msm8960 \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
        libaudio-resampler \
        tinymix

PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libstagefrighthw


PRODUCT_PACKAGES += \
	libwfcu

PRODUCT_PACKAGES += \
	power.msm8960

# App
PRODUCT_PACKAGES += \
    PinyinIME \
    FileExplorer

# for bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
	system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
	system/extras/bugmailer/send_bug:system/bin/send_bug

# QRNGD
PRODUCT_PACKAGES += qrngd


#common build.props
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.composition.type=dyn \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0 \
    persist.sys.strictmode.disable=true \
    com.qc.hardware=true \
    debug.egl.recordable.rgba8888=1 \
    ro.qualcomm.bt.hci_transport=smd \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ro.telephony.ril.v3=qcomdsds \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=320 \
    persist.audio.handset.mic=dmic \
    persist.audio.fluence.mode=endfire \
    persist.audio.lowlatency.rec=false \
    ro.telephony.call_ring.multiple=0
    

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
