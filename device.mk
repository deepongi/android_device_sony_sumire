# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/sumire/overlay

PRODUCT_COPY_FILES := \
    device/sony/sumire/rootdir/system/etc/Liquid_Handset_cal.acdb:system/etc/Liquid_Handset_cal.acdb \
	device/sony/sumire/rootdir/system/etc/MTP_Global_cal.acdb:system/etc/MTP_Global_cal.acdb \
	device/sony/sumire/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
	device/sony/sumire/rootdir/system/etc/Sony_Hdmi_cal.acdb:system/etc/Sony_Hdmi_cal.acdb \
	device/sony/sumire/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
	device/sony/sumire/rootdir/system/etc/Fluid_Bluetooth_cal.acdb:system/etc/Fluid_Bluetooth_cal.acdb \
	device/sony/sumire/rootdir/system/etc/MTP_Hdmi_cal.acdb:system/etc/MTP_Hdmi_cal.acdb \
	device/sony/sumire/rootdir/system/etc/MTP_Headset_cal.acdb:system/etc/MTP_Headset_cal.acdb \
	device/sony/sumire/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
	device/sony/sumire/rootdir/system/etc/Liquid_General_cal.acdb:system/etc/Liquid_General_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Fluid_General_cal.acdb:system/etc/Fluid_General_cal.acdb \
	device/sony/sumire/rootdir/system/etc/MTP_Bluetooth_cal.acdb:system/etc/MTP_Bluetooth_cal.acdb \
	device/sony/sumire/rootdir/system/etc/MTP_General_cal.acdb:system/etc/MTP_General_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Fluid_Speaker_cal.acdb:system/etc/Fluid_Speaker_cal.acdb \
	device/sony/sumire/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
	device/sony/sumire/rootdir/system/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
	device/sony/sumire/rootdir/system/etc/Sony_Handset_cal.acdb:system/etc/Sony_Handset_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Liquid_Global_cal.acdb:system/etc/Liquid_Global_cal.acdb \
	device/sony/sumire/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
	device/sony/sumire/rootdir/system/etc/Fluid_Hdmi_cal.acdb:system/etc/Fluid_Hdmi_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Liquid_Bluetooth_cal.acdb:system/etc/Liquid_Bluetooth_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Liquid_Speaker_cal.acdb:system/etc/Liquid_Speaker_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Sony_Bluetooth_cal.acdb:system/etc/Sony_Bluetooth_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Fluid_Headset_cal.acdb:system/etc/Fluid_Headset_cal.acdb \
	device/sony/sumire/rootdir/system/etc/MTP_Handset_cal.acdb:system/etc/MTP_Handset_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Sony_General_cal.acdb:system/etc/Sony_General_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Liquid_Headset_cal.acdb:system/etc/Liquid_Headset_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Sony_Headset_cal.acdb:system/etc/Sony_Headset_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Sony_Speaker_cal.acdb:system/etc/Sony_Speaker_cal.acdb \
	device/sony/sumire/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
	device/sony/sumire/rootdir/system/etc/MTP_Speaker_cal.acdb:system/etc/MTP_Speaker_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Liquid_Hdmi_cal.acdb:system/etc/Liquid_Hdmi_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Sony_Global_cal.acdb:system/etc/Sony_Global_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Fluid_Global_cal.acdb:system/etc/Fluid_Global_cal.acdb \
	device/sony/sumire/rootdir/system/etc/Fluid_Handset_cal.acdb:system/etc/Fluid_Handset_cal.acdb \
	device/sony/sumire/rootdir/system/etc/BCM4356.hcd:system/etc/firmware/BCM43xx.hcd

# Device Specific Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml

# Device Init
PRODUCT_PACKAGES += \
    init.recovery.sumire \
    init.sumire \
    ueventd.sumire

# Lights
PRODUCT_PACKAGES += \
    lights.sumire

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=480 \
    ro.usb.pid_suffix=1D9

# Dalvik VM specific for devices with 2048 MB of RAM (Works fine with sumire)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/kitakami/platform.mk)
$(call inherit-product, vendor/sony/sumire/sumire-vendor.mk)
