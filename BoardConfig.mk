USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/Hisense/EG98/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := EG98

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/Hisense/EG98/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/mt_usb/gadget/lun0/file"
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_RECOVERY_FSTAB := device/hisense/eg98/fstab.qcom
TARGET_PREBUILT_RECOVERY_KERNEL := device/hisense/eg98/recovery-kernel

# Files needed for recovery image
PRODUCT_COPY_FILES += \
device/lenovo/armani_row/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
device/lenovo/armani_row/recovery/sbin/charger:/recovery/root/sbin/charger \
device/lenovo/armani_row/recovery/sbin/charge.sh:/recovery/root/sbin/charge.sh \
device/lenovo/armani_row/recovery/umountusb.sh:root/umountusb.sh

