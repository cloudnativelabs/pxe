#!/usr/bin/env sh
set -e

find usr | cpio -o -H newc -O oem-packet.cpio
gzip oem-packet.cpio

# Proof
gzip --stdout --decompress oem-packet.cpio.gz | cpio -it
