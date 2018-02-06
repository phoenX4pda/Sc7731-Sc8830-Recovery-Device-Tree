

# Paths
TREE_PATH := device/Lemon/Lemon_S8
VENDOR_PATH := vendor/Lemon/Lemon_S8
KERNEL_PATH := kernel/sprd

# JACK

$(shell export ANDROID_JACK_VM_ARGS="-Xmx1500m -Dfile.encoding=UTF-8 -XX:+TieredCompilation")

# Platform
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := sc8830
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := sc7731g
TARGET_UNIFIED_DEVICE := true
USE_CAMERA_STUB := false

# RIL
COMMON_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING 
COMMON_GLOBAL_CFLAGS += -DUSE_SCX31_KHEADER
BOARD_PROVIDES_RILD := true

# System properties
TARGET_SYSTEM_PROP += $(TREE_PATH)/system.prop

# Hardware-specific
SOC_SCX30G_V2 := true
SOC_SCX31C := true
BOARD_USES_SPRD_HARDWARE := true

# Wifi
WIFI_DRIVER_MODULE_PATH := /lib/modules/sprdwl.ko
WIFI_DRIVER_FW_PATH_PARAM := /data/misc/wifi/fwpath
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WIFI_DRIVER_MODULE_NAME := sprdwl
BOARD_WLAN_DEVICE := qcwcn
BOARD_WLAN_DEVICE_REV := MARLIN_15C_SS_W16.09.3
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_BAND := 802_11_ABG

# Camera
CAMERA_SUPPORT_SIZE := 5M
#android zsl capture
TARGET_BOARD_CAMERA_ANDROID_ZSL_MODE := false
#back camera rotation capture
TARGET_BOARD_BACK_CAMERA_ROTATION := false
#front camera rotation capture
TARGET_BOARD_FRONT_CAMERA_ROTATION := false
#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false
TARGET_BOARD_CAMERA_HAL_VERSION := 1.0
TARGET_BOARD_CAMERA_ANTI_FLICKER := true
TARGET_BOARD_USE_THRID_LIB := true
TARGET_BOARD_USE_THIRD_AF_LIB_A := true
TARGET_BOARD_USE_ALC_AE_AWB := true



# Audio
BOARD_USES_TINYALSA_AUDIO := true
TARGET_TINY_ALSA_IGNORE_SILENCE_SIZE := true



# FM radio
BOARD_HAVE_FM_BCM := true
BOARD_HAVE_FMRADIO_BCM := true

# Graphics
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
HWUI_COMPILE_FOR_PERF := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
USE_OPENGL_RENDERER := true

# HWComposer
USE_SPRD_HWCOMPOSER := true
USE_SPRD_DITHER := true
USE_OVERLAY_COMPOSER_GPU := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Lights
TARGET_HAS_BACKLIT_KEYS := false

# Codecs
COMMON_GLOBAL_CFLAGS += -DBOARD_CANT_REALLOCATE_OMX_BUFFERS

# Use dmalloc() for such low memory devices like us
MALLOC_IMPL := dlmalloc
BOARD_USES_LEGACY_MMAP := true

# Enable dex-preoptimization to speed up the first boot sequence
WITH_DEXPREOPT := true
WITH_DEXPREOPT_BOOT_IMG_ONLY := true
WITH_DEXPREOPT_PIC := true
WITH_DEXPREOPT_COMP := false

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_NO_CHARGER_LED := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging
BACKLIGHT_PATH := /sys/class/backlight/panel/brightness
BOARD_CHARGER_DISABLE_INIT_BLANK := true
HAVE_KEYBOARD_BACKLIGHT := false

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5872025600
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Kernel
INSTALL_KERNEL_MODULES_ON_RAMDISK := true
TARGET_PREBUILT_KERNEL:= $(TREE_PATH)/kernel.img
TARGET_PREBUILT_DTB   := $(TREE_PATH)/dt.img
BOARD_KERNEL_CMDLINE  := console=ttyS1,115200n8
BOARD_KERNEL_BASE     := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS  := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt $(TARGET_PREBUILT_DTB)

# Resolution
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Assert
TARGET_OTA_ASSERT_DEVICE := Lemon_S8,S8,sc7731c,Lemon

# ota block
BLOCK_BASED_OTA := false

# Root
WITH_SU := true

#Recovery
RECOVERY_VARIANT := philz
NUM_FRAMEBUFFER_SURFACE_BUFFERS	:= 3
BOARD_RECOVERY_NEEDS_FBIOPAN_DISPLAY := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_USE_CUSTOM_LUN_FILE_PATH  := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
DEVICE_RESOLUTION := 480x854
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_FSTAB := $(TREE_PATH)/recovery.fstab
TARGET_COMMON_NAME := Lemon_S8
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.debuggable=1 \
service.adb.root=1 \
persist.sys.usb.config=adb
USE_OPENGL_RENDERER := true
SP1_NAME := "internal_sd"
SP1_BACKUP_METHOD  := files
SP1_MOUNTABLE     := 1
TW_INTERNAL_STORAGE_PATH   := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH   := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE  := true
PRODUCT_COPY_FILES := $(TREE_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab
PRODUCT_COPY_FILES := $(TREE_PATH)/init.board.rc:recovery/root/init.board.rc
PRODUCT_COPY_FILES := $(TREE_PATH)/init.rc:recovery/root/init.rc
PRODUCT_COPY_FILES := $(TREE_PATH)/init.sc8830.rc:recovery/root/init.sc8830.rc
PRODUCT_COPY_FILES := $(TREE_PATH)/init.sc8830.usb.rc:recovery/root/init.sc8830.usb.rc
PRODUCT_COPY_FILES := $(TREE_PATH)/ueventd.sc8830.rc:recovery/root/ueventd.sc8830.rc
TW_DEFAULT_LANGUAGE := en
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
#RECOVERY_TOUCHSCREEN_FLIP_X := true
#RECOVERY_TOUCHSCREEN_SWAP_XY := true
#BOARD_HAS_FLIPPED_SCREEN := true
#TW_HAS_DOWNLOAD_MODE  := true
#TW_NO_REBOOT_BOOTLOADER := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_NO_CPU_TEMP  := true
TW_BRIGHTNESS_PATH  := /sys/devices/40260000.sprd_pwm_bl/backlight/sprd_backlight/brightness
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_hdpi
TWHAVE_SELINUX := true
TW_INCLUDE_FB2PNG := true
TW_SCREEN_BLANK_ON_BOOT := true
#endif