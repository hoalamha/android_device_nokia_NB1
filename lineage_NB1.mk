# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/nokia/NB1/NB1-vendor.mk)

# Device
$(call inherit-product, device/nokia/NB1/device.mk)

# TWRP
ifeq ($(WITH_TWRP),true)
$(call inherit-product, device/nokia/NB1/twrp/twrp.mk)
else
TARGET_RECOVERY_FSTAB := device/nokia/NB1/rootdir/etc/fstab.NB1
endif

# Device identifiers
PRODUCT_DEVICE := NB1
PRODUCT_NAME := lineage_NB1
PRODUCT_BRAND := NOKIA
PRODUCT_MODEL := TA-1004
PRODUCT_MANUFACTURER := FIH
PRODUCT_RELEASE_NAME := NB1

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=NB1 \
        PRIVATE_BUILD_DESC="TA-1004_00WW-user 9 PPR1.180610.011 00WW_5_15A release-keys"

BUILD_FINGERPRINT := Nokia/TA-1004_00WW/NB1:9/PPR1.180610.011/00WW_5_15A:user/release-keys

