 # Inherit AOSP device configuration for mako.
$(call inherit-product, device/htc/dlx/device_dlx.mk)

# Inherit common product files.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/cdma.mk)

# Inherit VZW stuff
#$(call inherit-product, vendor/revolt/configs/vzw.mk)

# DLX Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/dlx

# Setup device specific product configuration.
PRODUCT_NAME := revolt_dlx
PRODUCT_BRAND := htc
PRODUCT_DEVICE := dlx
PRODUCT_MODEL := HTC Droid DNA
PRODUCT_MANUFACTURER := HTC

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_dlx BUILD_FINGERPRINT=verizon_wwe/dlx/dlx:4.1.1/JRO03C/147796.1:user/release-keys PRIVATE_BUILD_DESC="2.06.605.1 CL147796 release-keys" BUILD_NUMBER=123160
PRODUCT_RELEASE_NAME := dlx

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_dlx

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

