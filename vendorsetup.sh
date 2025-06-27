echo 'Cloning stuff needed to build for tundra'

# Device common
echo 'Cloning common device tree'
git clone https://github.com/AOSP-for-tundra/android_device_motorola_sm7325-common.git -b infinity device/motorola/sm7325-common

# Kernel
echo 'Cloning kernel'
git clone https://github.com/AOSP-for-tundra/android_kernel_motorola_sm7325.git --recursive -b lineage-22.2-ksunext kernel/motorola/sm7325

# Hardware motorola
echo 'Cloning hardware_motorola'
rm -rf hardware/motorola
git clone https://github.com/AOSP-for-tundra/android_hardware_motorola.git -b lineage-22.2 hardware/motorola

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/AOSP-for-tundra/proprietary_vendor_motorola_tundra.git -b lineage-22.2 vendor/motorola/tundra

# Vendor common
echo 'Cloning common vendor tree'
git clone https://github.com/AOSP-for-tundra/proprietary_vendor_motorola_sm7325-common.git -b lineage-22.2 vendor/motorola/sm7325-common

# Keys
echo 'Cloning private keys'
git clone https://github.com/0mar99/private_keys.git -b infinity vendor/infinity-priv/keys

echo 'delete vendorsetup.sh from device tree once this is done'
