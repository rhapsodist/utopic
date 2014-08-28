#
# Copyright (C) 2012 Canonical, Ltd. All rights reserved.
#

LOCAL_PATH:= $(call my-dir)
ROOT_PATH:=$(call my-dir)/..

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        gpg.c \
        build-packet.c \
        compress.c \
        filter.h \
        free-packet.c \
        getkey.c \
        keydb.c \
        keyring.c \
        seskey.c \
        kbnode.c \
        mainproc.c \
        armor.c \
        mdfilter.c \
        textfilter.c \
        progress.c \
        misc.c \
        openfile.c \
        keyid.c \
        parse-packet.c \
        status.c \
        plaintext.c \
        sig-check.c \
        keylist.c \
        signal.c \
        card-util.c \
        app-openpgp.c \
        iso7816.c \
        apdu.c \
        ccid-driver.c \
        cardglue.c \
        tlv.c \
        pkclist.c \
        skclist.c \
        pubkey-enc.c \
        passphrase.c \
        seckey-cert.c \
        encr-data.c \
        cipher.c \
        encode.c \
        sign.c \
        verify.c \
        revoke.c \
        decrypt.c \
        keyedit.c \
        dearmor.c \
        import.c \
        export.c \
        trustdb.c \
        tdbdump.c \
        tdbio.c \
        delkey.c \
        keygen.c \
        pipemode.c \
        helptext.c \
        keyserver.c \
        photoid.c \
        exec.c

LOCAL_C_INCLUDES := \
        $(ROOT_PATH)/include \
        $(ROOT_PATH)/intl \
        $(ROOT_PATH)/../zlib

LOCAL_STATIC_LIBRARIES :=

LOCAL_CFLAGS := \
        -DLOCALEDIR="\"/share/locale\"" \
        -DGNUPG_LIBEXECDIR="\"/sbin\"" \
        -DGNUPG_DATADIR="\"/share/gnupg\"" \
        -DGNUPG_LIBDIR="\"/sbin\""

LOCAL_CFLAGS += -DHAVE_CONFIG_H

LOCAL_STATIC_LIBRARIES += libgpgcipher libgpgutil libgpgmpi libgpgintl libgpgcompat
LOCAL_STATIC_LIBRARIES += libc libz libdl

LOCAL_MODULE:= static_gpg
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/recovery
LOCAL_MODULE_STEM := gpg
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
