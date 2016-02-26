FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://iwlwifi-8000C-17.ucode"
SRC_URI += "file://iwlwifi-8000C-18.ucode"
SRC_URI += "file://iwlwifi-8000C-19.ucode"

do_install_append() {
        # Copy the most recent iwlwifi ucode
        cp ${WORKDIR}/iwlwifi-8000C-17.ucode ${D}/lib/firmware/
        cp ${WORKDIR}/iwlwifi-8000C-18.ucode ${D}/lib/firmware/
        cp ${WORKDIR}/iwlwifi-8000C-19.ucode ${D}/lib/firmware/
}
