#
# Copyright (C) 2012 Canonical, Ltd. All rights reserved.
#

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        mpiutil.c \
        mpi-add.c \
        mpi-bit.c \
        mpi-cmp.c \
        mpi-div.c \
        mpi-gcd.c \
        mpi-inline.c \
        mpi-inv.c \
        mpi-mul.c \
        mpi-pow.c \
        mpi-mpow.c \
        mpi-scan.c \
        mpicoder.c \
        mpih-cmp.c \
        mpih-div.c \
        mpih-mul.c \
        generic/mpih-add1.c \
        generic/mpih-lshift.c \
        generic/mpih-mul1.c \
        generic/mpih-mul2.c \
        generic/mpih-mul3.c \
        generic/mpih-rshift.c \
        generic/mpih-sub1.c   
    
LOCAL_CFLAGS := -DHAVE_CONFIG_H
	
LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/../include/ \
        $(LOCAL_PATH)/generic

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libgpgmpi

include $(BUILD_STATIC_LIBRARY)
