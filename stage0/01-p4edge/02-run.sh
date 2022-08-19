#!/bin/sh

install -m 755 files/bmv2-start "${ROOTFS_DIR}/usr/bin/"
install -m 644 files/bmv2.service "${ROOTFS_DIR}/lib/systemd/system/"
install -m 755 files/bmv2-p4rtshell "${ROOTFS_DIR}/usr/bin/"


