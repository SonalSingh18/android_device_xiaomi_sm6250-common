LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := CarrierMetrics DevicePolicyPrebuilt DiagnosticsToolPrebuilt PlayAutoInstallConfig SoundAmplifierPrebuilt Tycho VZWAPNLib arcore talkback AdaptiveVPNPrebuilt AmbientStreaming AppDirectedSMSService BetterBugStub CarrierLocation CarrierServices CarrierWifi CbrsNetworkMonitor ConfigUpdater DCMO ConnMO DMService DreamlinerPrebuilt DreamlinerUpdater GCS GoogleCamera KidsSupervisionStub ImsServiceEntitlement MaestroPrebuilt MyVerizonServices OemDmTrigger OdadPrebuilt PartnerSetupPrebuilt SCONE ScribePrebuilt Showcase TetheringEntitlement VzwOmaTrigger WfcActivation TagGoogle GoogleFeedback grilservice Papers RilConfigService
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
