adb shell
mount -o remount /system
grep –c "service.adb.tcp.port" /system/build.prop || echo "service.adb.tcp.port=5555" >> /system/build.prop
grep –c "nettsv" /system/etc/hosts || echo "192.168.1.100 nettsv" >> /system/etc/hosts
