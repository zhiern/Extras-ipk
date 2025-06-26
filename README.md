## X86_64设备
   ```bash
   grep -q IceG_repo /etc/opkg/customfeeds.conf || echo 'src/gz zhiern_repo https://clone.kejizero.online/github.com/zhiern/Extras-ipk/raw/x86_64/myrepo' >> /etc/opkg/customfeeds.conf
   wget https://clone.kejizero.online/https://raw.githubusercontent.com/zhiern/ipkg-make-index/refs/heads/main/my-private.key.pub -O /tmp/my-private.key.pub
   opkg-key add /tmp/my-private.key.pub
   opkg update
   ```
## X86_64设备
   ```bash
   grep -q IceG_repo /etc/opkg/customfeeds.conf || echo 'src/gz zhiern_repo https://clone.kejizero.online/github.com/zhiern/Extras-ipk/raw/aarch64_generic/myrepo' >> /etc/opkg/customfeeds.conf
   wget https://clone.kejizero.online/https://raw.githubusercontent.com/zhiern/ipkg-make-index/refs/heads/main/my-private.key.pub -O /tmp/my-private.key.pub
   opkg-key add /tmp/my-private.key.pub
   opkg update
   ```
