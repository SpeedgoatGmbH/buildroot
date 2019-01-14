#######################################################################
#
# libaravis
#
#######################################################################
LIBARAVIS_VERSION = 0.6.0
LIBARAVIS_SOURCE =  aravis-$(LIBARAVIS_VERSION).tar.xz 
LIBARAVIS_SITE = http://ftp.gnome.org/pub/GNOME/sources/aravis/0.6/
LIBARAVIS_LICENSE =  LGPL v2+
LIBARAVIS_LICENSE_FILES = COPYING
LIBARAVIS_INSTALL_STAGING = YES

LIBARAVIS_DEPENDENCIES = libxml2 libglib2 host-pkgconf bar gstreamer audit libusb

LIBARAVIS_CONF_OPTS += -gst-plugin=true
LIBARAVIS_CONF_OPTS += -packet-socket=true 
LIBARAVIS_CONF_OPTS += -usb=true 
LIBARAVIS_CONF_OPTS += -fast-heartbeat=true
LIBARAVIS_CONF_OPTS += -viewer=false
LIBARAVIS_CONF_OPTS += -documentation=false
LIBARAVIS_CONF_OPTS += -introspection=false


$(eval $(meson-package))

#option('gst-plugin', type: 'boolean', value: true,
#  description : 'Build GStreamer plugin')
#option('packet-socket', type: 'boolean', value: true,
#  description : 'Enable packet socket support')
#option('usb', type: 'boolean', value: true,
#  description : 'Enable USB support')
#option('fast-heartbeat', type: 'boolean', value: false,
#description: 'Enable faster heartbeat rate')
