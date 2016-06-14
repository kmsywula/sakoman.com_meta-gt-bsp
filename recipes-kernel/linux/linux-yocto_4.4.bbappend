FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto-4.4:"

KBRANCH_corei7-64-intel-common = "standard/gt"
SRCREV_machine_corei7-64-intel-common = "${AUTOREV}"

SRC_URI = "git://sandbox.sakoman.com/linux-yocto-4.4.git;name=machine;branch=${KBRANCH}; \
           git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-4.4;destsuffix=${KMETA}"

SRC_URI += "file://intel-corei7-64.cfg"
SRC_URI += "file://mainline-dev.scc"

# bug description: patch 0001-xhci-enable-cmd-mismatch-verbose-debug.patch seems to be applied,
# but after checking the file it was supposed to patch - file is untouched
# the file to be patched is: find -name xhci-ring.c, lines 1309+
# on my system full directory is:
# ./tmp/work-shared/intel-corei7-64/kernel-source/drivers/usb/host/xhci-ring.c

# that patch should apply cleanly and it should leave patched file afterwars (NOT THE CASE!)
SRC_URI += "file://0001-xhci-enable-cmd-mismatch-verbose-debug.patch"

# that patch should fail - just to show that Yocto tried to apply the patch and failed
#SRC_URI += "file://broken_0001-xhci-enable-cmd-mismatch-verbose-debug.patch"
