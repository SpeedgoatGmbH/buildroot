#!/bin/sh

# Add any custom code to be run at startup here
# Tweak ethernet settings to get GIGE vision working better. We optimize
# for large transfers.

echo "Tweaking Ethernet Settings."

# Set the max OS send buffer size (wmem) and receive buffer size (rmem) to 12 MB for queues on all protocols.

echo 'net.core.wmem_max=12582912' >> /etc/sysctl.conf
echo 'net.core.rmem_max=12582912' >> /etc/sysctl.conf

# set minimum size, initial size, and maximum size in bytes:

echo 'net.ipv4.tcp_rmem= 10240 87380 12582912' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_wmem= 10240 87380 12582912' >> /etc/sysctl.conf

#Turn on window scaling which can be an option to enlarge the transfer window:
echo 'net.ipv4.tcp_window_scaling = 1' >> /etc/sysctl.conf

# Enable timestamps as defined in RFC1323:
echo 'net.ipv4.tcp_timestamps = 1' >> /etc/sysctl.conf

# Enable select acknowledgments:
echo 'net.ipv4.tcp_sack = 1' >> /etc/sysctl.conf

# TCP will not cache metrics on closing connections.

echo 'net.ipv4.tcp_no_metrics_save = 1' >> /etc/sysctl.conf

# Set maximum number of packets, queued on the INPUT side, when the interface receives packets faster than kernel can process them.
echo 'net.core.netdev_max_backlog = 5000' >> /etc/sysctl.conf

# Now reload the changes:
sysctl -p

echo "Ethernet Settings Reloaded."

# GST Shark Export location
export GST_SHARK_LOCATION=/mnt/profile