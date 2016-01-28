LOCAL_PATH := $(call my-dir)

include device/sony/kitakami/BoardConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := E6653

#Kernel
TARGET_KERNEL_SOURCE := kernel/sony/kitakami
TARGET_KERNEL_CONFIG := msm8994_defconfig
TARGET_KERNEL_VARIANT_CONFIG := kitakami_defconfig

#D2W
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"
TARGET_TAP_TO_WAKE_STRING := true
