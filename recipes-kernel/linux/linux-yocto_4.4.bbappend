FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto-4.4:"

SRC_URI += "file://intel-corei7-64.cfg"
SRC_URI += "file://mainline-dev.scc"

SRC_URI += "file://0001-mfd-lpss-Add-PCI-IDs-for-Intel-Broxton-B-Step-platfo.patch"
SRC_URI += "file://0002-Revert-i2c-ACPI-Rework-I2C-device-scanning.patch"
SRC_URI += "file://0003-spi-pxa2xx-Add-support-for-Intel-Broxton-B-Step.patch"
SRC_URI += "file://0004-REVERTME-hack-to-enable-spidev-since-bios-doesn-t.patch"
