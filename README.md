# ASL
>Android Subsystem for Linux

利用 Magisk 开机自动使用 unshare 创建 Linux 容器并启动 ssh(Port:23322)

## 使用

使用 magisk 刷入模块后请在重启前释放rootfs

rootfs使用方式：

```shell
su
tar axvf /path/to/arch.tar.xz -C /data/asl/fs
```

终端输入下列指令获取帮助：

```shell
su -c "/data/asl -h"
或
su -c "/data/asl/bin/asl -h"
```
## 更新

** 还能用就不要更新！！！还能用就不要更新！！！还能用就不要更新！！！**

更新流程：

1,停用旧版模块后重启手机

2,进入终端输入：`rm -rf /data/asl/bin`

3,卸载模块并重启手机

4,刷入新版模块

推荐使用ArchLinux/Manjaro，Debian会有奇奇怪怪的网络问题，Alpine会有奇奇怪怪的tty报错

## 关于

嫌弃Android上指令太少，busybox和termux都有不足，遂折腾一番

## 相关
- [busybox](https://github.com/docker-library/busybox)
- [unshare](https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/)
- [linux deploy](https://github.com/meefik/linuxdeploy)
- [aur](https://aur.archlinux.org/)
