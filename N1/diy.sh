#!/bin/bash

# Default IP
sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate

# Remove packages
rm -rf feeds/luci/applications/luci-app-passwall

# Add packages
git clone https://github.com/nantayo/My-Pkg package/my-pkg
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/amlogic
# mosdns
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
