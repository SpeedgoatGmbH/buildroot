################################################################################
#
# vcu-ctrl-sw
#
################################################################################

VCU_CTRL_SW_VERSION = v2018.3
VCU_CTRL_SW_SOURCE = xilinx-$(VCU_CTRL_SW_VERSION).tar.xz
VCU_CTRL_SW_SITE = https://github.com/Xilinx/vcu-ctrl-sw/archive
VCU_CTRL_SW_LICENSE = proprietary
VCU_CTRL_SW_LICENSE_FILES = LICENSE.md
VCU_CTRL_SW_INSTALL_STAGING = YES

$(eval $(autotools-package))
