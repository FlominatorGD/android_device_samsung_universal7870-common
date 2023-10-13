LOCAL_PATH := device/samsung/universal7870-common/libsecnativefeature

include $(CLEAR_VARS)

LOCAL_MODULE := libsecnativefeature
LOCAL_SRC_FILES := \
    SecNativeFeatureCIf.cpp \
    SecNativeFeatureCppIf.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/external/expat/lib

LOCAL_SHARED_LIBRARIES := libexpat

LOCAL_CFLAGS := -Wall -Werror

LOCAL_VENDOR_MODULE := true

LOCAL_MULTILIB := 32

include $(BUILD_SHARED_LIBRARY)
