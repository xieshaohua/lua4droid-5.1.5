# Copyright 2016 Phicomm Power Management Team

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

#LOCAL_SRC_FILES := lapi.c lcode.c lctype.c ldebug.c ldo.c ldump.c lfunc.c \
#                   lgc.c llex.c lmem.c lobject.c lopcodes.c lparser.c lstate.c \
#                   lstring.c ltable.c ltm.c lundump.c lvm.c lzio.c lauxlib.c lbaselib.c \
#                   lbitlib.c lcorolib.c ldblib.c liolib.c lmathlib.c loslib.c lstrlib.c \
#                   ltablib.c lutf8lib.c loadlib.c linit.c lua.c

LOCAL_SRC_FILES := lauxlib.h ldblib.c ldo.h lgc.c llex.c lmem.c lobject.h lparser.c lstring.c ltable.h lua.c \
                   lualib.h lvm.h print.c lapi.c lbaselib.c ldebug.c ldump.c lgc.h llex.h lmem.h lopcodes.c \
                   lparser.h lstring.h ltablib.c lundump.c lzio.c lapi.h lcode.c ldebug.h lfunc.c linit.c \
                   llimits.h loadlib.c lopcodes.h lstate.c lstrlib.c ltm.c luaconf.h lundump.h lzio.h lauxlib.c \
                   lcode.h ldo.c lfunc.h liolib.c lmathlib.c lobject.c loslib.c lstate.h ltable.c ltm.h lua.h lvm.c

LOCAL_MODULE := lua

LOCAL_CFLAGS := -O2 -Wall
#LOCAL_CFLAGS := -Werror

LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := true

LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_SBIN_UNSTRIPPED)

LOCAL_STATIC_LIBRARIES := libc libm
#LOCAL_SHARED_LIBRARIES := libdl

include $(BUILD_EXECUTABLE)
