RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := device/nokia/NB1/twrp/twrp.fstab
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USES_LOGD := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_SUPERSU := true
TW_DEFAULT_BRIGHTNESS := 149
TW_INCLUDE_CRYPTO := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
TWRP_INCLUDE_LOGCAT := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc/a800000.ssusb/a800000.dwc3/gadget/lun%d/file"
#TW_BRIGHTNESS_PATH := "/sys/devices/soc/900000.qcom\x2cmdss_mdp/900000.qcom\x2cmdss_mdp:qcom\x2cmdss_fb_primary/leds/lcd-backlight/brightness"
#TARGET_HW_DISK_ENCRYPTION := true
#TARGET_KEYMASTER_WAIT_FOR_QSEE := true
