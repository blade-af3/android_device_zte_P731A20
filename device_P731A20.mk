$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/P731A20/P731A20-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/P731A20/overlay

LOCAL_PATH := device/zte/P731A20

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# sprd telephony
PRODUCT_PACKAGES += \
	Dialer \
	Mms

# graphics modules
PRODUCT_PACKAGES += \
	libGLES_mali.so \
	libboost.so \
	mali.ko

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler
	
# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.sc8830:root/fstab.sc8830 \
    $(LOCAL_PATH)/rootdir/init.board.rc:root/init.board.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.board.rc:root/init.recovery.board.rc \
    $(LOCAL_PATH)/rootdir/init.sc8830.rc:root/init.sc8830.rc \
    $(LOCAL_PATH)/rootdir/init.sc8830.usb.rc:root/init.sc8830.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/tiny_hw.xml:system/etc/tiny_hw.xml \
    $(LOCAL_PATH)/audio/codec_pga.xml:system/etc/codec_pga.xml \
    $(LOCAL_PATH)/audio/audio_hw.xml:system/etc/audio_hw.xml \
    $(LOCAL_PATH)/audio/audio_para:system/etc/audio_para \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/focaltech_ts.idc:system/usr/idc/focaltech_ts.idc \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/headset-keyboard.kl:system/usr/keylayout/headset-keyboard.kl \
    $(LOCAL_PATH)/configs/sci-keypad.kl:system/usr/keylayout/sci-keypad.kl \
    $(LOCAL_PATH)/configs/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/egl.cfg:system/lib/egl/egl.cfg \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# WiFi
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_AAPT_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_P731A20
PRODUCT_DEVICE := P731A20
