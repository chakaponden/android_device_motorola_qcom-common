ifneq ($(filter mb886 moto_msm8960 moto_msm8960_jbbl vanquish xt897 xt897c xt901 xt907 xt925 xt926 xt925_jbbl,$(TARGET_DEVICE)),)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
    system/media/camera/include

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    android.hidl.token@1.0-utils \
    android.hardware.graphics.bufferqueue@1.0 \
    libhardware liblog libcamera_client libutils

LOCAL_HEADER_LIBRARIES := \
    libnativebase_headers

LOCAL_STATIC_LIBRARIES := \
    libbase \
    libarect

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_HEAPTRACKED_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := libbinder

LOCAL_SRC_FILES := \
    CompatSymbols.cpp

LOCAL_MODULE := libshim_cam
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
endif
