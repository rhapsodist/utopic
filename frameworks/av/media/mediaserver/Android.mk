LOCAL_PATH:= $(call my-dir)

ifneq ($(BOARD_USE_CUSTOM_MEDIASERVEREXTENSIONS),true)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := register.cpp
LOCAL_MODULE := libregistermsext
LOCAL_MODULE_TAGS := optional
include $(BUILD_STATIC_LIBRARY)
endif

## Disabled because Ubuntu Touch is not using mediaserver - instead UT uses
## camera_service which is located in ubuntu/compat/media. UT is trying to
## rely on the Android Binder services less and less.
#include $(CLEAR_VARS)

#LOCAL_SRC_FILES:= \
#	main_mediaserver.cpp 

#LOCAL_SHARED_LIBRARIES := \
#	libaudioflinger \
#	libcameraservice \
#	libmedialogservice \
#	libcutils \
#	libnbaio \
#	libmedia \
#	libmediaplayerservice \
#	libutils \
#	liblog \
#	libbinder

#LOCAL_STATIC_LIBRARIES := \
#	libregistermsext

#LOCAL_C_INCLUDES := \
#    frameworks/av/media/libmediaplayerservice \
#    frameworks/av/services/medialog \
#    frameworks/av/services/audioflinger \
#    frameworks/av/services/camera/libcameraservice

#LOCAL_MODULE:= mediaserver

#include $(BUILD_EXECUTABLE)
