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
 sed -i 's/192.168.8.2/192.168.1.1/g' package/base-files/files/bin/config_generate   # 修改默认ip
# sed -i 's/\/bin\/ash/\/bin\/bash/' package/base-files/files/etc/passwd    # 替换终端为bash
# sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' feeds/luci/collections/luci/Makefile
# sed -i 's/+uhttpd +uhttpd-mod-ubus //g' feeds/luci/collections/luci/Makefile    # 删除uhttpd
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings    # 设置密码为空
# sed -i 's/PATCHVER:=*/PATCHVER:=5.4/g' target/linux/x86/Makefile   # x86机型,默认内核5.10，修改内核为5.15
# rm -rf feeds/packages/utils/runc/Makefile   # 临时删除run1.0.3
# svn export https://github.com/openwrt/packages/trunk/utils/runc/Makefile feeds/packages/utils/runc/Makefile   # 添加runc1.0.2



rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-netgear
#rm -rf feeds/luci/applications/luci-app-upnp
rm -rf feeds/luci/applications/luci-app-wrtbwmon





