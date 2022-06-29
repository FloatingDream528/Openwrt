#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone https://github.com/jerrykuku/luci-app-ttnode.git package/ttnode
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt  package
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
rm -rf feeds/packages/net/smartdns
svn co https://github.com/kenzok8/openwrt-packages/trunk/smartdns package/smartdns
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06/applications/luci-app-smartdns package/luci-app-smartdns
svn co https://github.com/riverscn/openwrt-iptvhelper/trunk/iptvhelper package/iptvhelper
svn co https://github.com/riverscn/openwrt-iptvhelper/tree/master/luci-app-iptvhelper package/luci-app-iptvhelper
svn co https://github.com/lisaac/luci-app-dockerman/trunk/applications/luci-app-dockerman package/luci-app-dockerman
svn co https://github.com/gd0772/package/trunk/luci-app-usb-printer package/luci-app-usb-printer
