$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/n2awifi/n2awifiue-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/n2awifi/overlay

LOCAL_PATH := device/samsung/n2awifi
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/file_contexts:recovery/root/prebuilt_file_contexts

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := lineage_n2awifi
PRODUCT_DEVICE := n2awifi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := n2awifi
