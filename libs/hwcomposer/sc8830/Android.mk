# Copyright (C) 2008 The Android Open Source Project
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



LOCAL_PATH:= $(call my-dir)
# HAL module implemenation stored in
# hw/<COPYPIX_HARDWARE_MODULE_ID>.<ro.board.platform>.so

ifeq ($(strip $(TARGET_BOARD_PLATFORM)),sc8830)
DEVICE_WITH_GSP := true
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)),scx15)
DEVICE_WITH_GSP := true
endif

ifeq ($(strip $(DEVICE_WITH_GSP)),true)
include $(CLEAR_VARS)

LOCAL_MODULE := sprd_gsp.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_SRC_FILES := gsp_hal.cpp

MALI_DDK_PATH := device/sprd/common/libs
LOCAL_C_INCLUDES := $(MALI_DDK_PATH)/mali/src/ump/include
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../../gralloc \
	$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include/video/ \
	$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include/ \
	$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)	

endif


