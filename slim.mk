# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSP Kitakami device parts
$(call inherit-product, device/sony/sumire/aosp_e6653.mk)

# Inherit CM Kitakami device parts
$(call inherit-product, device/sony/kitakami/platform2.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Fingerprint for sumire (from stock)
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903
#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/C6903/C6903:5.1.1/14.6.A.1.236/2031203603:user/release-keys
#PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="C6903-user 5.1.1 14.6.A.1.236 2031203603 release-keys"

# Override Product Name for crDroid
PRODUCT_NAME := slim_sumire
PRODUCT_MODEL := Xperia Z5
