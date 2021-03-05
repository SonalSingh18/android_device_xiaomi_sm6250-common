LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := AmbientSensePrebuilt CalculatorGooglePrebuilt CalendarGooglePrebuilt Chrome Chrome-Stub DevicePolicyPrebuilt Maps MicropaperPrebuilt NgaResources Ornament Photos PixelWallpapers2020 PrebuiltDeskClockGoogle PrebuiltGmail SoundAmplifierPrebuilt TrichromeLibrary TrichromeLibrary-Stub Tycho WallpapersBReel2020 CarrierSetup MyVerizonServices OBDM_Permissions OemDmTrigger Showcase SprintDM SprintHM talkback arcore AndroidAutoStubPrebuilt VzwOmaTrigger RecorderPrebuilt Velvet VZWAPNLib VzwOmaTrigger obdm_stub
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
