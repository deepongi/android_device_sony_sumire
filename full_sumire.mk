# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit Common stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sumire
PRODUCT_NAME := full_sumire
PRODUCT_BRAND := Sony
PRODUCT_MODEL := E6653
PRODUCT_MANUFACTURER := Sony
