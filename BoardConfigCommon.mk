TARGET_SPECIFIC_HEADER_PATH := device/motorola/msm8960-common/include

BOARD_VENDOR := motorola

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Kernel
TARGET_KERNEL_SOURCE        := kernel/motorola/msm8960-common
TARGET_KERNEL_CONFIG        := msm8960_mmi_motorola_defconfig
BOARD_KERNEL_CMDLINE        := console=/dev/null androidboot.hardware=qcom user_debug=31 loglevel=1 msm_rtb.filter=0x3F kgsl.mmutype=gpumm
BOARD_KERNEL_BASE           := 0x80200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81600000
BOARD_KERNEL_PAGESIZE       := 2048

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1560281088
BOARD_FLASH_BLOCK_SIZE := 131072

# Wifi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_WLAN_DEVICE                := qcwcn
WIFI_DRIVER_MODULE_NAME          := prima_wlan
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/prima_wlan.ko"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# NFC
BOARD_HAVE_NFC := true

# QCOM hardware
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm8960

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 40
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Workaround to avoid issues with legacy liblights on QCOM platforms
TARGET_PROVIDES_LIBLIGHTS := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Number of supplementary service groups allowed by init
TARGET_NR_SVC_SUPP_GIDS := 28

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_ICS_COMPAT -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# Workaround for missing symbols in camera
BOARD_CAMERA_USE_MM_HEAP := true
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/motorola/msm8960-common/recovery.fstab

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Graphics
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/motorola/msm8960-common/configs/egl.cfg

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1

#Twrp
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_USB_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_INITRC := device/motorola/msm8960-common/recovery.rc
