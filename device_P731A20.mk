$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/P731A20/P731A20-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/P731A20/overlay

LOCAL_PATH := device/zte/P731A20

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.sc8830:root/fstab.sc8830 \
    $(LOCAL_PATH)/rootdir/init.sc8830.rc:root/init.sc8830.rc \
    $(LOCAL_PATH)/rootdir/init.sc8830.usb.rc:root/init.sc8830.usb.rc \
    $(LOCAL_PATH)/rootdir/init.storage.rc:root/init.storage.rc \
    $(LOCAL_PATH)/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc \
    
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_P731A20
PRODUCT_DEVICE := P731A20
