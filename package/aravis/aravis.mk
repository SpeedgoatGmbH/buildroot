################################################################################
#
# libaravis
#
################################################################################

ARAVIS_VERSION = 0.6.1
ARAVIS_SOURCE =  aravis-$(ARAVIS_VERSION).tar.xz
ARAVIS_SITE = http://ftp.gnome.org/pub/GNOME/sources/aravis/0.6
ARAVIS_INSTALL_STAGING = YES
ARAVIS_DEPENDENCIES = libxml2 libglib2 gstreamer1 gstreamer1-mm gst1-plugins-base audit libusb
ARAVIS_CONF_OPTS += --enable-gst-plugin
ARAVIS_CONF_OPTS += --enable-packet-socket

$(eval $(autotools-package))
