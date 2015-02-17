$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/Hisense/EG98/EG98-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Hisense/EG98/overlay

LOCAL_PATH := device/Hisense/EG98
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/Hisense/EG98/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Hisense blobs for recovery

PRODUCT_COPY_FILES += \
    device/Hisense/EG98/recovery/init.rc:recovery/root/init.rc \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_EG98
PRODUCT_DEVICE := EG98
