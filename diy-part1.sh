#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

cd package
git clone https://github.com/kenzok8/small.git
rm -rf small/tcping
git clone https://github.com/xiaoxiao29/luci-app-adguardhome.git
git clone https://github.com/jerrykuku/lua-maxminddb.git

wget https://github.com/kkstone/Actions-RAX3000M-NAND-EMMC/raw/emmc/luci-packages/luci-app-frp.zip && unzip luci-app-frp.zip && rm -rf luci-app-frp.zip
wget https://github.com/kkstone/Actions-RAX3000M-NAND-EMMC/raw/emmc/luci-packages/luci-app-wolplus.zip && unzip luci-app-wolplus.zip && rm -rf luci-app-wolplus.zip
