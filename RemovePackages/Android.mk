LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := DevicePolicyPrebuilt NgaResources PlayAutoInstallConfig SoundAmplifierPrebuilt SwitchAccessPrebuilt Tycho VoiceAccessPrebuilt VZWAPNLib arcore talkback AdaptiveVPNPrebuilt AmbientStreaming AppDirectedSMSService BetterBugStub CarrierLocation CarrierMetrics CarrierWifi CbrsNetworkMonitor ConfigUpdater ConnMO DCMO DMService FilesPrebuilt HealthIntelligenceStubPrebuilt KidsSupervisionStub MaestroPrebuilt MyVerizonServices OdadPrebuilt OemDmTrigger PartnerSetupPrebuilt PixelSupportPrebuilt ScribePrebuilt Showcase TetheringEntitlement VzwOmaTrigger WeatherPixelPrebuilt WfcActivation DocumentsUIGoogle CarrierSetup ConnectivityThermalPowerManager GoogleFeedback PixelDisplayService RilConfigService grilservice Papers
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
