FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto-4.4:"

KBRANCH ?= "standard/gt"
SRCREV_machine_corei7-64-intel-common ?= "${AUTOREV}"

SRC_URI += "file://intel-corei7-64.cfg"
SRC_URI += "file://mainline-dev.scc"
