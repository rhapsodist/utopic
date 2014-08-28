#
# Copyright (C) 2012 Canonical, Ltd. All rights reserved.
#

LOCAL_PATH:= $(call my-dir)
ROOT_PATH:=$(call my-dir)/..

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        cipher.c \
        pubkey.c \
        md.c \
        dynload.c \
        des.c \
        twofish.c \
        blowfish.c \
        cast5.c \
        rijndael.c \
        camellia.c \
        camellia-glue.c \
        idea.c \
        elgamal.c \
        rsa.c \
        primegen.c \
        random.c \
        dsa.c \
        smallprime.c \
        md5.c \
        rmd160.c \
        sha1.c \
        sha256.c \
        rndlinux.c \
        sha512.c

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/../intl

LOCAL_CFLAGS := \
        -DHAVE_CONFIG_H \
        -DGNUPG_LIBDIR="\"/sbin\""


LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libgpgcipher

include $(BUILD_STATIC_LIBRARY)
