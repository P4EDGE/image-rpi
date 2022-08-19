#!/bin/sh

install -m 755 files/bmv2-start "${ROOTFS_DIR}/usr/bin/"
install -m 644 files/bmv2.service "${ROOTFS_DIR}/lib/systemd/system/"

# Display logo on TTY login
install -m 644 files/motd "${ROOTFS_DIR}/etc/"
cp files/logo.png ${ROOTFS_DIR}/srv/p4edge/dashboard/static/assets/images/
sed -i 's/P4Edge/P4Pi/' ${ROOTFS_DIR}/srv/p4edge/dashboard/forms.py 
sed -i 's/P4Edge/P4Pi/' ${ROOTFS_DIR}/srv/p4edge/dashboard/templates/accounts/login.html 
sed -i 's/P4Edge/P4Pi/' ${ROOTFS_DIR}/srv/p4edge/dashboard/templates/includes/navigation.html
sed -i 's/P4Edge/P4Pi/' ${ROOTFS_DIR}/srv/p4edge/dashboard/templates/layouts/base.html
sed -i 's/P4Edge/P4Pi/' ${ROOTFS_DIR}/srv/p4edge/dashboard/templates/layouts/base-fullscreen.html

