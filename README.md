## X86_64 设备
   ```bash
   grep -q IceG_repo /etc/opkg/customfeeds.conf || echo 'src/gz zhiern_repo https://clone.kejizero.online/github.com/zhiern/Extras-ipk/raw/x86_64/myrepo' >> /etc/opkg/customfeeds.conf
   wget https://clone.kejizero.online/https://raw.githubusercontent.com/zhiern/ipkg-make-index/refs/heads/main/my-private.key.pub -O /tmp/my-private.key.pub
   opkg-key add /tmp/my-private.key.pub
   opkg update
   ```
## Rockchip 设备
   ```bash
   grep -q IceG_repo /etc/opkg/customfeeds.conf || echo 'src/gz zhiern_repo https://clone.kejizero.online/github.com/zhiern/Extras-ipk/raw/aarch64_generic/myrepo' >> /etc/opkg/customfeeds.conf
   wget https://clone.kejizero.online/https://raw.githubusercontent.com/zhiern/ipkg-make-index/refs/heads/main/my-private.key.pub -O /tmp/my-private.key.pub
   opkg-key add /tmp/my-private.key.pub
   opkg update
   ```

### 插件说明
| 插件 | 说明 |
| ------------- | ------------- |
| helloworld | SSR Plus+ 插件依赖 |
| openwrt-passwall | PassWall 插件依赖 |
| luci-app-adguardhome | AdGuard Home 去广告 |
| luci-app-openlist | 一个支持多种存储的文件列表程序 |
| luci-app-aliddns | 阿里云 DDNS 插件 |
| luci-app-aliyundrive-fuse | 阿里云盘 Fuse 服务 |
| luci-app-aliyundrive-webdav | 阿里云盘 WebDAV 服务 |
| luci-app-amlogic | 晶晨宝盒 |
| luci-theme-argon | 老竭力开发的 Argon 主题 |
| luci-app-argon-config | Argon 主题设置，需搭配 Argon 主题使用 |
| luci-app-bypass | Bypass 科学上网插件 |
| luci-app-ddnsto | DDNSTO 内网穿透 |
| luci-app-dockerman | Docker 图形化插件 |
| luci-app-eqos | IP 限速插件 |
| luci-app-filebrowser | 文件浏览器 |
| luci-app-ikoolproxy | iKoolProxy 滤广告  |
| luci-app-mosdns | DNS 分流解析与广告过滤 |
| luci-app-netdata | 中文版 Netdata 监控 |
| luci-app-oaf | 应用过滤 |
| luci-app-onliner | 在线用户 |
| luci-app-openclash | OpenClash 小猫咪科学上网插件 |
| luci-app-passwall | PassWall 科学上网插件 |
| luci-app-passwall2 | PassWall2 科学上网插件 |
| luci-app-poweroff | 关机 |
| luci-app-pushbot | 全能推送 |
| luci-app-serverchan | 微信推送 |
| luci-app-smartdns | SmartDNS DNS防污染 |
| luci-app-ssr-plus | SSR Plus+ 科学上网插件 |
| luci-app-store | iStore 应用商店 |
| luci-app-unblockneteasemusic | 解除网易云音乐播放限制 |
| luci-app-vssr | Hello World 科学上网插件 |
| luci-app-wizard | 设置向导 |
| luci-app-wrtbwmon | 流量监控 |

### Stargazers Over Time
[![Stargazers Over Time](https://starchart.cc/zhiern/openwrt-package.svg)](https://starchart.cc/zhiern/openwrt-package)
