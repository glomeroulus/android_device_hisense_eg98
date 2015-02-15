## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := EG98

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Hisense/EG98/device_EG98.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := EG98
PRODUCT_NAME := cm_EG98
PRODUCT_BRAND := Hisense
PRODUCT_MODEL := EG98
PRODUCT_MANUFACTURER := Hisense
