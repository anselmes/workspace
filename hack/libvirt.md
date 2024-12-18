# libvirt

```bash
source scripts/environment.sh

# create cloudinit iso
sudo -E createiso /var/lib/libvirt/boot/cloudinit.iso hack/meta-data hack/user-data hack/network-config

# create volume
sudo -E createvol /var/lib/libvirt/images/sandbox.qcow2 noble-server-cloudimg-arm64.img

# create vm
sudo -E virsh define hack/vm.xml
sudo -E virsh start sandbox
```
