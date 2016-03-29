FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto-4.4:"

KBRANCH_corei7-64-intel-common = "standard/gt"
SRCREV_machine_corei7-64-intel-common = "${AUTOREV}"

SRC_URI = "git://sandbox.sakoman.com/linux-yocto-4.4.git;name=machine;branch=${KBRANCH}; \
           git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-4.4;destsuffix=${KMETA}"

SRC_URI += "file://intel-corei7-64.cfg"
SRC_URI += "file://mainline-dev.scc"
