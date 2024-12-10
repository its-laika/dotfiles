# Special configuration for Arch on my ThinkPad

## Artefacts on screen

### Problems

- Only happened on single screen (went away if second screen was attached)
- Green block artefacts, mostly limited to window
- Mostly text related, videos were unaffected

### Fix

- see: [Reddit](https://www.reddit.com/r/linuxhardware/comments/1f6qydb/awful_artefacts_on_high_refresh_rate/?share_id=w_wAhOqpZxlw7WYYtVy-c&utm_content=2&utm_medium=ios_app&utm_name=ioscss&utm_source=share&utm_term=1)
- Kernel parameter `amdgpu.dcdebugmask=0x10` fixed it for me
- How to add / test kernel parameters: [Arch wiki](https://wiki.archlinux.org/title/Kernel_parameters#systemd-boot)