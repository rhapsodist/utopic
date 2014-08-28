LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

libLZF_SRC_FILES := \
    lzf_c.c \
    lzf_d.c

# Static library for host
# ========================================================
include $(CLEAR_VARS)

LOCAL_MODULE := liblzf
LOCAL_SRC_FILES := $(libLZF_SRC_FILES)

include $(BUILD_HOST_STATIC_LIBRARY)


# Static library for target
# ========================================================
include $(CLEAR_VARS)

LOCAL_MODULE := liblzf
LOCAL_SRC_FILES := $(libLZF_SRC_FILES)

include $(BUILD_STATIC_LIBRARY)
