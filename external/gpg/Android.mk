#  Copyright (C) 2012 Canonical, Ltd.  All rights reserved.

LOCAL_PATH:=$(call my-dir)
gpg_local_path := $(LOCAL_PATH)

#
# build static version of libdl from bionics
#

include $(CLEAR_VARS)
LOCAL_LDFLAGS := -Wl,--exclude-libs=libgcc.a
# for x86, exclude libgcc_eh.a for the same reasons as above
ifeq ($(TARGET_ARCH),x86)
LOCAL_LDFLAGS += -Wl,--exclude-libs=libgcc_eh.a
endif
LOCAL_SRC_FILES:= ../../bionic/libdl/libdl.c
LOCAL_MODULE:= libdl
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
include $(BUILD_STATIC_LIBRARY)

# gpg
include $(CLEAR_VARS)

#LOCAL_MODULE_CLASS := EXECUTABLES
#LOCAL_MODULE := gpg
#LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
#LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
#LOCAL_SRC_FILES := $(LOCAL_MODULE)
#include $(BUILD_PREBUILT)

include $(gpg_local_path)/cipher/Android.mk
include $(gpg_local_path)/g10/Android.mk
include $(gpg_local_path)/intl/Android.mk
include $(gpg_local_path)/mpi/Android.mk
include $(gpg_local_path)/util/Android.mk