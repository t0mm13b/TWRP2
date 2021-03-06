LOCAL_PATH := $(call my-dir)

recovery_additional_deps := teamwin fix_permissions.sh fs md5check.sh mke2fs.conf parted sdparted libmtdutils libbmlutils libmmcutils libflashutils

#dummy file to trigger required modules
include $(CLEAR_VARS)
LOCAL_MODULE := teamwin
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_REQUIRED_MODULES := busybox e2fsck mke2fs tune2fs pigz libc libcutils libdl libext2_blkid libext2_com_err libext2_e2p libext2fs libext2_profile libext2_uuid liblog libm libstlport linker libstdc++
LOCAL_SRC_FILES := teamwin
include $(BUILD_PREBUILT)

#fix_permissions
include $(CLEAR_VARS)
LOCAL_MODULE := fix_permissions.sh
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#fs
include $(CLEAR_VARS)
LOCAL_MODULE := fs
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#md5check.sh
include $(CLEAR_VARS)
LOCAL_MODULE := md5check.sh
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#mke2fs.conf
include $(CLEAR_VARS)
LOCAL_MODULE := mke2fs.conf
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/etc
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#parted
include $(CLEAR_VARS)
LOCAL_MODULE := parted
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

#sdparted
include $(CLEAR_VARS)
LOCAL_MODULE := sdparted
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

