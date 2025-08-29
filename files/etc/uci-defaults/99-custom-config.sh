#!/bin/sh
# 设置默认主机名
uci set system.@system[0].hostname='MyCustomRouter'
uci set system.@system[0].timezone='UTC'
# 设置LAN IP
uci set network.lan.ipaddr='10.0.0.1'
uci set network.lan.netmask='255.255.255.0'
# 启用WiFi（假设有无线接口）
uci set wireless.radio0.disabled='0'
uci set wireless.default_radio0.ssid='MySSID'
uci set wireless.default_radio0.encryption='psk2'
uci set wireless.default_radio0.key='MyPassword'
# 提交更改
uci commit
# 可选：重启服务
/etc/init.d/network restart
exit 0
