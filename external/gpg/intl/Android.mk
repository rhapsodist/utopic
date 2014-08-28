#
# Copyright (C) 2012 Canonical, Ltd. All rights reserved.
#

LOCAL_PATH:= $(call my-dir)
ROOT_PATH:=$(call my-dir)/..

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        bindtextdom.c \
        dcgettext.c \
        dgettext.c \
        gettext.c \
        finddomain.c \
        hash-string.c \
        loadmsgcat.c \
        localealias.c \
        textdomain.c \
        l10nflist.c \
        explodename.c \
        dcigettext.c \
        dcngettext.c \
        dngettext.c \
        ngettext.c \
        plural.c \
        plural-exp.c \
        localcharset.c \
        threadlib.c \
        lock.c \
        relocatable.c \
        langprefs.c \
        localename.c \
        log.c \
        printf.c \
        setlocale.c \
        version.c \
        intl-compat.c \
        osdep.c

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/../include

LOCAL_CFLAGS := \
        -DIN_LIBINTL \
        -DBUILDING_LIBINTL \
        -DBUILDING_DLL \
        -DIN_LIBRARY \
        -DNO_XMALLOC \
        -DHAVE_CONFIG_H \
        -DLOCALEDIR="\"/share/locale\"" \
        -DLOCALE_ALIAS_PATH="\"/share/locale\"" \
        -DENABLE_RELOCATABLE=1 \
        -DDEPENDS_ON_LIBICONV=1 \
        -DLIBDIR="\"/sbin\""

LOCAL_CFLAGS += -DINSTALLDIR=\"/system/lib\"
LOCAL_CFLAGS += -Dset_relocation_prefix=libintl_set_relocation_prefix
LOCAL_CFLAGS += -Drelocate=libintl_relocate \

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libgpgintl

include $(BUILD_STATIC_LIBRARY)
