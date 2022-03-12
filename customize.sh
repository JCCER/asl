
SKIPUNZIP=1
ASH_STANDALONE=0

ASLPATH=/data/asl

ui_print "- 解压模块文件"
unzip -o "${ZIPFILE}" -x 'META-INF/*' -d ${MODPATH} >&2
sleep 1

ui_print "- 创建工作目录"
mkdir -p ${ASLPATH}
mkdir -p ${ASLPATH}/log
mkdir -p ${ASLPATH}/fs
sleep 1

ui_print "- 设置文件权限"
set_perm_recursive ${MODPATH}/bin 0 0 0755 0755
sleep 1

ui_print "- 配置工作环境"
mv ${MODPATH}/bin ${ASLPATH}
su -c "${ASLPATH}/bin/busybox --install -s ${ASLPATH}/bin"
ln -s /data/asl/bin/asl /data/asl
sleep 1

ui_print "- 移除无用文件"
rm -rf ${MODPATH}/customize.sh 2>/dev/null
rm -rf ${MODPATH}/bin 2>/dev/null
sleep 1

ui_print "- ASL已安装完成"
ui_print "- 请将rootfs放到 ${ASLPATH}/fs 下"

set_perm_recursive ${MODPATH} 0 0 0755 0644

ui_print "---------- 安装信息 -----------"
ui_print "- ASL根目录:${ASLPATH}"
ui_print "- ASL版本：$(grep_prop version ${TMPDIR}/module.prop)"
ui_print "- 重启后终端输入 asl -h 查看完整帮助"
