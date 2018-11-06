LOCAL_PATH := $(call my-dir)
APP_ABI := all
subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
		. \
))
include $(subdirs)
