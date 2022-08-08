LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := CarrierMetrics DevicePolicyPrebuilt DiagnosticsToolPrebuilt GoogleCamera SoundAmplifierPrebuilt Tycho VZWAPNLib arcore talkback AmbientSensePrebuilt AndroidAutoStubPrebuilt AppDirectedSMSService BetterBug CarrierLocation CarrierServices CarrierWifi CbrsNetworkMonitor ConfigUpdater DCMO ConnMO DMService ImsServiceEntitlement MaestroPrebuilt MyVerizonServices OdadPrebuilt PartnerSetupPrebuilt SCONE ScribePrebuilt SecurityHubPrebuilt Showcase TetheringEntitlement USCCDM VzwOmaTrigger WfcActivation GoogleFeedback grilservice Papers RilConfigService
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
