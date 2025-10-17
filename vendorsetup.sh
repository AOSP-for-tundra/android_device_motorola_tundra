echo 'Cloning stuff needed to build for tundra'

# Device common
echo 'Cloning common device tree'
git clone https://github.com/AOSP-for-tundra/android_device_motorola_sm7325-common.git -b derp device/motorola/sm7325-common

# Kernel
echo 'Cloning kernel'
git clone https://github.com/AOSP-for-tundra/android_kernel_motorola_sm7325.git --recursive -b lineage-23.0-ksu kernel/motorola/sm7325

# Hardware motorola
echo 'Cloning hardware_motorola'
rm -rf hardware/motorola
git clone https://github.com/AOSP-for-tundra/android_hardware_motorola.git -b lineage-23.0 hardware/motorola

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/AOSP-for-tundra/proprietary_vendor_motorola_tundra.git -b lineage-23.0 vendor/motorola/tundra

# Vendor common
echo 'Cloning common vendor tree'
git clone https://github.com/AOSP-for-tundra/proprietary_vendor_motorola_sm7325-common.git -b lineage-23.0 vendor/motorola/sm7325-common

# MotoCamera BS
git clone https://gitlab.com/Deivid21/proprietary_vendor_motorola_MotCamera4-lahaina.git -b android-15 vendor/motorola/MotCamera4-lahaina
git clone https://gitlab.com/Deivid21/proprietary_vendor_motorola_MotCamera-common.git -b android-15 vendor/motorola/MotCamera-common
git clone https://gitlab.com/Deivid21/proprietary_vendor_motorola_MotoPhotoEditor.git -b android-15 vendor/motorola/MotoPhotoEditor
git clone https://gitlab.com/Deivid21/proprietary_vendor_motorola_MotCamera3AI-lahaina.git -b android-15 vendor/motorola/MotCamera3AI-lahaina
git clone https://gitlab.com/Deivid21/proprietary_vendor_motorola_MotCameraAI-common.git -b android-15 vendor/motorola/MotCameraAI-common
git clone https://gitlab.com/Deivid21/proprietary_vendor_motorola_MotoSignatureApp.git -b android-15 vendor/motorola/MotoSignatureApp
git clone https://gitlab.com/Deivid21/proprietary_vendor_motorola_MotorolaSettingsProvider.git -b android-15 vendor/motorola/MotorolaSettingsProvider

# Keys
echo 'Cloning private keys'
rm -rf vendor/lineage/signing
git clone https://github.com/0mar99/private_keys.git -b derp vendor/lineage/signing

echo 'delete vendorsetup.sh from device tree once this is done'
