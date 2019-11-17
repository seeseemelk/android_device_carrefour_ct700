#
# Copyright 2014 The Android Open-Source Project
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
#

# Use the non-open-source parts, if they're present
-include vendor/carrefour/ct700/BoardConfigVendor.mk

# CPU Settings
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_KERNEL_ARCH := $(TARGET_ARCH)

#Kernel Settings
BOARD_KERNEL_CMDLINE := console=TTYHSL0
TARGET_KERNEL_CONFIG := lineageos_ct700_defconfig
TARGET_KERNEL_SOURCE := kernel/allwinner/a13

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_PAGESIZE := 2048

# Partitions

# 16 MB
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
# 2 GB
BOARD_CACHEIMAGE_PARTITION_SIZE := 2147483648
# 32 MB
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
# 16 MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
# The rest
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2080374784
