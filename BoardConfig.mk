# inherit from the proprietary version
-include vendor/Hisense/EG98/BoardConfigVendor.mk

USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Platform
TARGET_BOOTLOADER_BOARD_NAME := EG98
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true


# Architecture
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno203
BOARD_USES_ADRENO_200 := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a5
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true



# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 13901824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13901824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 629145600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2873457664
BOARD_PERSISTIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CACHE_DEVICE := /dev/block/mmcblk0p18
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p17
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_DATA_DEVICE := /dev/block/mmcblk0p21
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_PREBUILT_KERNEL := device/Hisense/EG98/kernel


# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/f_mass_storage/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/f_mass_storage/lun1/file

# USB Mounting
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_RECOVERY_FSTAB := device/hisense/eg98/fstab.qcom
TARGET_PREBUILT_RECOVERY_KERNEL := device/hisense/eg98/recovery-kernel

# Files needed for recovery image
PRODUCT_COPY_FILES += \
device/Hisense/eg98/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
device/Hisense/eg98/recovery/sbin/charger:/recovery/root/sbin/charger \
device/Hisense/eg98/recovery/sbin/charge.sh:/recovery/root/sbin/charge.sh \
device/Hisense/eg98/recovery/umountusb.sh:root/umountusb.sh

# Assert
TARGET_OTA_ASSERT_DEVICE := EG98,msm8625q
# Recovery
TARGET_RECOVERY_FSTAB := device/Hisense/eg98/rootdir/etc/fstab.qcom
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/Hisense/eg98/recovery/tw_graphics.c
DEVICE_RESOLUTION := 480x854
TW_INTERNAL_STORAGE_PATH := "/internal_sd"
TW_INTERNAL_STORAGE_MOUNT_POINT := "internal_sd"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true

BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/Hisense/eg98/recovery/twrp-graphics.c
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.590337/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255


