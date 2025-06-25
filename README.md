## 如何使用

1. 加载密钥文件
   ```bash
   grep -q IceG_repo /etc/opkg/customfeeds.conf || echo 'src/gz zhiern_repo https://clone.kejizero.online/github.com/zhiern/Extras-ipk/raw/x86_64/myrepo' >> /etc/opkg/customfeeds.conf
   wget https://clone.kejizero.online/github.com/zhiern/Extras-ipk/blob/x86_64/myrepo/my-private.key.pub -O /tmp/my-private.key.pub
   opkg-key add /tmp/my-private.key.pub
   opkg update
   ```
