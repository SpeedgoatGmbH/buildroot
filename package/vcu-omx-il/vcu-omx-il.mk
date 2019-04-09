VCU_OMX_IL_VERSION = master
VCU_OMX_IL_SITE = git://Xilinx/vcu-omx-il
VCU_OMX_IL_SITE_METHOD = git
VCU_OMX_IL_LICENSE_FILES = LICENSE.md
VCU_OMX_IL_INSTALL_STAGING = YES

$(eval $(autotools-package))