FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://iwlwifi-8000C-19.ucode \
	    file://dsp_fw_bxtn_v430.bin"

do_install_append() {
        # Copy the most recent iwlwifi ucode
        cp ${WORKDIR}/iwlwifi-8000C-19.ucode ${D}/lib/firmware/
	# Copy the most recent DSP code
	mkdir -p ${WORKDIR}/lib/firmware/intel
	cp ${WORKDIR}/dsp_fw_bxtn_v430.bin ${D}/lib/firmware/intel/dsp_fw_bxtn.bin
}
