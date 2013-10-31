## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/nx40x/full_nx40x.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nx40x
PRODUCT_NAME := cm_nx40x
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX40X
PRODUCT_MANUFACTURER := nubia

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=NX40X BUILD_FINGERPRINT=nubia/NX40X/NX40X:4.2.2/JDQ39/eng.nubia.20130927.155030:user/release-keys PRIVATE_BUILD_DESC="NX40X-user 4.2.2 JDQ39 eng.nubia.20130927.155030 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
