#
#    Copyright (C) 2014 Haruki Hasegawa
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

#
# Kiss FFT (libkiss_fft)
#
MY_DIR := $(call my-dir)
CXXDASP_TOP_DIR := $(call cxxdasp-normalize-path, $(MY_DIR)/../../../../..)

LOCAL_PATH := $(CXXDASP_TOP_DIR)/android/dep_libs/kiss_fft

include $(CLEAR_VARS)

LOCAL_MODULE := kiss_fft_static
LOCAL_MODULE_FILENAME := kiss_fft
LOCAL_SRC_FILES := kiss_fft.c tools/kiss_fftr.c
LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/tools
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/tools
LOCAL_EXPORT_CFLAGS := -DCXXDASP_USE_FFT_BACKEND_KISS_FFT=1

include $(BUILD_STATIC_LIBRARY)
