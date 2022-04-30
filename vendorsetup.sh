rm -rf hardware/xiaomi
git clone https://github.com/ArrowOS-Devices/android_hardware_xiaomi.git -b arrow-12.0 hardware/xiaomi
git clone https://github.com/ArrowOS-Devices/android_device_xiaomi_extras.git -b arrow-12.0 device/xiaomi/extras
git clone https://gitlab.com/ImSpiDy/azure-clang.git -b clang-14 prebuilts/clang/host/linux-x86/clang-14.0 --depth=1
