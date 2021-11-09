rm -rf hardware/qcom-caf/wlan
git clone https://github.com/CAF-Extended/hardware_qcom_wlan.git -b 12.0 hardware/qcom/wlan

rm -rf external/fastrpc
git clone https://github.com/AOSPA/android_external_fastrpc.git -b sapphire external/fastrpc

rm -rf vendor/qcom/opensource/power
git clone https://github.com/ArrowOS/android_vendor_qcom_opensource_power.git -b arrow-12.0 vendor/qcom/opensource/power

# QCOM Common Repos
rm -rf device/qcom/common
git clone https://github.com/SonalSingh18/qcom_common.git -b device device/qcom/common

rm -rf vendor/qcom/common
git clone https://github.com/SonalSingh18/qcom_common.git -b vendor vendor/qcom/common

# HALS
git clone https://github.com/AOSPA/android_hardware_qcom_display.git -b sapphire-855 hardware/qcom/display
git clone https://github.com/AOSPA/android_hardware_qcom_media.git -b sapphire-855 hardware/qcom/media
git clone https://github.com/AOSPA/android_hardware_qcom_audio.git -b sapphire-855 vendor/qcom/opensource/audio-hal/primary-hal

# Extras
git clone https://github.com/ArrowOS-Devices/android_packages_apps_GCamGOPrebuilt.git -b arrow-12.0 packages/apps/GCamGOPrebuilt
git clone https://github.com/ArrowOS-Devices/android_device_xiaomi_extras.git -b arrow-12.0 device/xiaomi/extras
git clone --depth=1 https://gitlab.com/Panchajanya1999/azure-clang.git -b main prebuilts/clang/host/linux-x86/clang-azure
#git clone https://github.com/SonalSingh18/vendor_xiaomi_miuicamera.git -b master vendor/xiaomi/miuicamera
rm -rf hardware/xiaomi
git clone https://github.com/ArrowOS-Devices/android_hardware_xiaomi.git -b arrow-12.0 hardware/xiaomi
