################################################################################
#
# libaravis
#
################################################################################

ARAVIS_VERSION = 0.6.0
ARAVIS_SOURCE =  aravis-$(ARAVIS_VERSION).tar.xz
ARAVIS_SITE = http://ftp.gnome.org/pub/GNOME/sources/aravis/0.6
ARAVIS_INSTALL_STAGING = YES
ARAVIS_DEPENDENCIES = libxml2 libglib2 gstreamer audit libusb
ARAVIS_CONF_OPTS = --enable-viewer=false
ARAVIS_CONF_OPTS += --enable-gst-0.1-plugin=true
ARAVIS_CONF_OPTS += --enable-gst-plugin=false
ARAVIS_CONF_OPTS += --enable-packet-socket=true
ARAVIS_CONF_OPTS += --enable-usb=false
ARAVIS_CONF_OPTS += --enable-fast-heartbeat=false
ARAVIS_CONF_OPTS += --enable-gtk-doc-html=false

$(eval $(autotools-package))
