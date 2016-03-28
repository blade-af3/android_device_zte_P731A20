## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := P731A20

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/P731A20/device_P731A20.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := P731A20
PRODUCT_NAME := cm_P731A20
PRODUCT_BRAND := zte
PRODUCT_MODEL := P731A20
PRODUCT_MANUFACTURER := zte
