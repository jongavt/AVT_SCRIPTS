#TITLE Marley Install

echo Transfering the busybox binary file to /data/local/tmp directory... 
adb push busybox /data/local/tmp
echo Transfer Complete
 
echo Transfering the su binary file to /data/local/tmp directory...
adb push su /data/local/tmp
echo Transfer complete


echo Transfering the Superuser.apk file to /data/local/tmp directory...
adb push apk/Superuser.apk /data/local/tmp
echo Transfer Complete


echo Remounting /system directory to read/write
adb mount -o rw,remount /system


echo Installing SU binary file...
adb shell "dd if=/data/local/tmp/su of=/system/xbin/su"
adb shell "chmod 6755 /system/xbin/su"
echo Install Complete

echo Installing Superuser app...
adb shell "dd if=/data/local/tmp/Superuser.apk of=/data/app/Superuser.apk"
adb shell "chmod 6755 /data/app/Superuser.apk"
echo Install Complete

echo Installing busybox binary file
adb shell "dd if=/data/local/tmp/busybox of=/system/xbin/busybox"
echo Install Complete


echo Setting Port for TCPIP protocol and  Host IP address to 192.168.1.100 nettsv
adb push scripts/host_update.sh /mnt
adb shell ./mnt/host_update.sh
echo Port and IP Set Complete

echo Creating symbolic links for the busybox binary file
echo Please be patient.  This will take a few minutes.

adb shell ln -s /system/xbin/busybox /system/xbin/
adb shell ln -s /system/xbin/busybox /system/xbin/
adb shell ln -s /system/xbin/busybox /system/xbin/addgroup
adb shell ln -s /system/xbin/busybox /system/xbin/adduser
adb shell ln -s /system/xbin/busybox /system/xbin/adjtimex
adb shell ln -s /system/xbin/busybox /system/xbin/ar
adb shell ln -s /system/xbin/busybox /system/xbin/arp
adb shell ln -s /system/xbin/busybox /system/xbin/arping
adb shell ln -s /system/xbin/busybox /system/xbin/ash
adb shell ln -s /system/xbin/busybox /system/xbin/awk
adb shell ln -s /system/xbin/busybox /system/xbin/basename
adb shell ln -s /system/xbin/busybox /system/xbin/bbconfig
adb shell ln -s /system/xbin/busybox /system/xbin/beep
adb shell ln -s /system/xbin/busybox /system/xbin/blkid
adb shell ln -s /system/xbin/busybox /system/xbin/brctl
adb shell ln -s /system/xbin/busybox /system/xbin/bunzip2
adb shell ln -s /system/xbin/busybox /system/xbin/bzcat
adb shell ln -s /system/xbin/busybox /system/xbin/bzip2
adb shell ln -s /system/xbin/busybox /system/xbin/cal
adb shell ln -s /system/xbin/busybox /system/xbin/cat
adb shell ln -s /system/xbin/busybox /system/xbin/catv
adb shell ln -s /system/xbin/busybox /system/xbin/chat
adb shell ln -s /system/xbin/busybox /system/xbin/chattr
adb shell ln -s /system/xbin/busybox /system/xbin/chgrp
adb shell ln -s /system/xbin/busybox /system/xbin/chmod
adb shell ln -s /system/xbin/busybox /system/xbin/chown
adb shell ln -s /system/xbin/busybox /system/xbin/chpasswd
adb shell ln -s /system/xbin/busybox /system/xbin/chpst
adb shell ln -s /system/xbin/busybox /system/xbin/chroot
adb shell ln -s /system/xbin/busybox /system/xbin/chrt
adb shell ln -s /system/xbin/busybox /system/xbin/chvt
adb shell ln -s /system/xbin/busybox /system/xbin/cksum
adb shell ln -s /system/xbin/busybox /system/xbin/clear
adb shell ln -s /system/xbin/busybox /system/xbin/cmp
adb shell ln -s /system/xbin/busybox /system/xbin/comm
adb shell ln -s /system/xbin/busybox /system/xbin/cp
adb shell ln -s /system/xbin/busybox /system/xbin/cpio
adb shell ln -s /system/xbin/busybox /system/xbin/crond
adb shell ln -s /system/xbin/busybox /system/xbin/crontab
adb shell ln -s /system/xbin/busybox /system/xbin/cryptpw
adb shell ln -s /system/xbin/busybox /system/xbin/cttyhack
adb shell ln -s /system/xbin/busybox /system/xbin/cut
adb shell ln -s /system/xbin/busybox /system/xbin/date
adb shell ln -s /system/xbin/busybox /system/xbin/dc
adb shell ln -s /system/xbin/busybox /system/xbin/dd
adb shell ln -s /system/xbin/busybox /system/xbin/deallocvt
adb shell ln -s /system/xbin/busybox /system/xbin/delgroup
adb shell ln -s /system/xbin/busybox /system/xbin/deluser
adb shell ln -s /system/xbin/busybox /system/xbin/depmod
adb shell ln -s /system/xbin/busybox /system/xbin/devmem
adb shell ln -s /system/xbin/busybox /system/xbin/df
adb shell ln -s /system/xbin/busybox /system/xbin/diff
adb shell ln -s /system/xbin/busybox /system/xbin/dirname
adb shell ln -s /system/xbin/busybox /system/xbin/dmesg
adb shell ln -s /system/xbin/busybox /system/xbin/dnsd
adb shell ln -s /system/xbin/busybox /system/xbin/dnsdomainname
adb shell ln -s /system/xbin/busybox /system/xbin/dos2unix
adb shell ln -s /system/xbin/busybox /system/xbin/du
adb shell ln -s /system/xbin/busybox /system/xbin/dumpkmap
adb shell ln -s /system/xbin/busybox /system/xbin/echo
adb shell ln -s /system/xbin/busybox /system/xbin/ed
adb shell ln -s /system/xbin/busybox /system/xbin/egrep
adb shell ln -s /system/xbin/busybox /system/xbin/eject
adb shell ln -s /system/xbin/busybox /system/xbin/env
adb shell ln -s /system/xbin/busybox /system/xbin/envdir
adb shell ln -s /system/xbin/busybox /system/xbin/envuidgid
adb shell ln -s /system/xbin/busybox /system/xbin/ether-wake
adb shell ln -s /system/xbin/busybox /system/xbin/expand
adb shell ln -s /system/xbin/busybox /system/xbin/expr
adb shell ln -s /system/xbin/busybox /system/xbin/fakeidentd
adb shell ln -s /system/xbin/busybox /system/xbin/false
adb shell ln -s /system/xbin/busybox /system/xbin/fbset
adb shell ln -s /system/xbin/busybox /system/xbin/fbsplash
adb shell ln -s /system/xbin/busybox /system/xbin/fdflush
adb shell ln -s /system/xbin/busybox /system/xbin/fdformat
adb shell ln -s /system/xbin/busybox /system/xbin/fdisk
adb shell ln -s /system/xbin/busybox /system/xbin/fgrep
adb shell ln -s /system/xbin/busybox /system/xbin/find
adb shell ln -s /system/xbin/busybox /system/xbin/findfs
adb shell ln -s /system/xbin/busybox /system/xbin/fold
adb shell ln -s /system/xbin/busybox /system/xbin/free
adb shell ln -s /system/xbin/busybox /system/xbin/fsck
adb shell ln -s /system/xbin/busybox /system/xbin/fsck.minix
adb shell ln -s /system/xbin/busybox /system/xbin/fsync
adb shell ln -s /system/xbin/busybox /system/xbin/ftpd
adb shell ln -s /system/xbin/busybox /system/xbin/ftpget
adb shell ln -s /system/xbin/busybox /system/xbin/ftpput
adb shell ln -s /system/xbin/busybox /system/xbin/fuser
adb shell ln -s /system/xbin/busybox /system/xbin/getopt
adb shell ln -s /system/xbin/busybox /system/xbin/getty
adb shell ln -s /system/xbin/busybox /system/xbin/grep
adb shell ln -s /system/xbin/busybox /system/xbin/gunzip
adb shell ln -s /system/xbin/busybox /system/xbin/gzip
adb shell ln -s /system/xbin/busybox /system/xbin/halt
adb shell ln -s /system/xbin/busybox /system/xbin/hd
adb shell ln -s /system/xbin/busybox /system/xbin/hdparm
adb shell ln -s /system/xbin/busybox /system/xbin/head
adb shell ln -s /system/xbin/busybox /system/xbin/hexdump
adb shell ln -s /system/xbin/busybox /system/xbin/hostid
adb shell ln -s /system/xbin/busybox /system/xbin/hostname
adb shell ln -s /system/xbin/busybox /system/xbin/httpd
adb shell ln -s /system/xbin/busybox /system/xbin/hush
adb shell ln -s /system/xbin/busybox /system/xbin/hwclock
adb shell ln -s /system/xbin/busybox /system/xbin/id
adb shell ln -s /system/xbin/busybox /system/xbin/ifconfig
adb shell ln -s /system/xbin/busybox /system/xbin/ifdown
adb shell ln -s /system/xbin/busybox /system/xbin/ifenslave
adb shell ln -s /system/xbin/busybox /system/xbin/ifplugd
adb shell ln -s /system/xbin/busybox /system/xbin/ifup
adb shell ln -s /system/xbin/busybox /system/xbin/inetd
adb shell ln -s /system/xbin/busybox /system/xbin/init
adb shell ln -s /system/xbin/busybox /system/xbin/insmod
adb shell ln -s /system/xbin/busybox /system/xbin/install
adb shell ln -s /system/xbin/busybox /system/xbin/ionice
adb shell ln -s /system/xbin/busybox /system/xbin/ip
adb shell ln -s /system/xbin/busybox /system/xbin/ipaddr
adb shell ln -s /system/xbin/busybox /system/xbin/ipcalc
adb shell ln -s /system/xbin/busybox /system/xbin/ipcrm
adb shell ln -s /system/xbin/busybox /system/xbin/ipcs
adb shell ln -s /system/xbin/busybox /system/xbin/iplink
adb shell ln -s /system/xbin/busybox /system/xbin/iproute
adb shell ln -s /system/xbin/busybox /system/xbin/iprule
adb shell ln -s /system/xbin/busybox /system/xbin/iptunnel
adb shell ln -s /system/xbin/busybox /system/xbin/kbd_mode
adb shell ln -s /system/xbin/busybox /system/xbin/kill
adb shell ln -s /system/xbin/busybox /system/xbin/killall
adb shell ln -s /system/xbin/busybox /system/xbin/killall5
adb shell ln -s /system/xbin/busybox /system/xbin/klogd
adb shell ln -s /system/xbin/busybox /system/xbin/last
adb shell ln -s /system/xbin/busybox /system/xbin/length
adb shell ln -s /system/xbin/busybox /system/xbin/less
adb shell ln -s /system/xbin/busybox /system/xbin/linux32
adb shell ln -s /system/xbin/busybox /system/xbin/linux64
adb shell ln -s /system/xbin/busybox /system/xbin/linuxrc
adb shell ln -s /system/xbin/busybox /system/xbin/ln
adb shell ln -s /system/xbin/busybox /system/xbin/loadfont
adb shell ln -s /system/xbin/busybox /system/xbin/loadkmap
adb shell ln -s /system/xbin/busybox /system/xbin/logger
adb shell ln -s /system/xbin/busybox /system/xbin/login
adb shell ln -s /system/xbin/busybox /system/xbin/logname
adb shell ln -s /system/xbin/busybox /system/xbin/logread
adb shell ln -s /system/xbin/busybox /system/xbin/losetup
adb shell ln -s /system/xbin/busybox /system/xbin/lpd
adb shell ln -s /system/xbin/busybox /system/xbin/lpq
adb shell ln -s /system/xbin/busybox /system/xbin/lpr
adb shell ln -s /system/xbin/busybox /system/xbin/ls
adb shell ln -s /system/xbin/busybox /system/xbin/lsattr
adb shell ln -s /system/xbin/busybox /system/xbin/lsmod
adb shell ln -s /system/xbin/busybox /system/xbin/lzmacat
adb shell ln -s /system/xbin/busybox /system/xbin/lzop
adb shell ln -s /system/xbin/busybox /system/xbin/lzopcat
adb shell ln -s /system/xbin/busybox /system/xbin/makedevs
adb shell ln -s /system/xbin/busybox /system/xbin/makemime
adb shell ln -s /system/xbin/busybox /system/xbin/man
adb shell ln -s /system/xbin/busybox /system/xbin/md5sum
adb shell ln -s /system/xbin/busybox /system/xbin/mdev
adb shell ln -s /system/xbin/busybox /system/xbin/mesg
adb shell ln -s /system/xbin/busybox /system/xbin/microcom
adb shell ln -s /system/xbin/busybox /system/xbin/mkdir
adb shell ln -s /system/xbin/busybox /system/xbin/mkdosfs
adb shell ln -s /system/xbin/busybox /system/xbin/mkfifo
adb shell ln -s /system/xbin/busybox /system/xbin/mkfs.minix
adb shell ln -s /system/xbin/busybox /system/xbin/mkfs.vfat
adb shell ln -s /system/xbin/busybox /system/xbin/mknod
adb shell ln -s /system/xbin/busybox /system/xbin/mkpasswd
adb shell ln -s /system/xbin/busybox /system/xbin/mkswap
adb shell ln -s /system/xbin/busybox /system/xbin/mktemp
adb shell ln -s /system/xbin/busybox /system/xbin/modprobe
adb shell ln -s /system/xbin/busybox /system/xbin/more
adb shell ln -s /system/xbin/busybox /system/xbin/mount
adb shell ln -s /system/xbin/busybox /system/xbin/mountpoint
adb shell ln -s /system/xbin/busybox /system/xbin/msh
adb shell ln -s /system/xbin/busybox /system/xbin/mt
adb shell ln -s /system/xbin/busybox /system/xbin/mv
adb shell ln -s /system/xbin/busybox /system/xbin/nameif
adb shell ln -s /system/xbin/busybox /system/xbin/nc
adb shell ln -s /system/xbin/busybox /system/xbin/netstat
adb shell ln -s /system/xbin/busybox /system/xbin/nice
adb shell ln -s /system/xbin/busybox /system/xbin/nmeter
adb shell ln -s /system/xbin/busybox /system/xbin/nohup
adb shell ln -s /system/xbin/busybox /system/xbin/nslookup
adb shell ln -s /system/xbin/busybox /system/xbin/od
adb shell ln -s /system/xbin/busybox /system/xbin/openvt
adb shell ln -s /system/xbin/busybox /system/xbin/passwd
adb shell ln -s /system/xbin/busybox /system/xbin/patch
adb shell ln -s /system/xbin/busybox /system/xbin/pgrep
adb shell ln -s /system/xbin/busybox /system/xbin/pidof
adb shell ln -s /system/xbin/busybox /system/xbin/ping
adb shell ln -s /system/xbin/busybox /system/xbin/ping6
adb shell ln -s /system/xbin/busybox /system/xbin/pipe_progress
adb shell ln -s /system/xbin/busybox /system/xbin/pivot_root
adb shell ln -s /system/xbin/busybox /system/xbin/pkill
adb shell ln -s /system/xbin/busybox /system/xbin/popmaildir
adb shell ln -s /system/xbin/busybox /system/xbin/poweroff
adb shell ln -s /system/xbin/busybox /system/xbin/printenv
adb shell ln -s /system/xbin/busybox /system/xbin/printf
adb shell ln -s /system/xbin/busybox /system/xbin/ps
adb shell ln -s /system/xbin/busybox /system/xbin/pscan
adb shell ln -s /system/xbin/busybox /system/xbin/pwd
adb shell ln -s /system/xbin/busybox /system/xbin/raidautorun
adb shell ln -s /system/xbin/busybox /system/xbin/rdate
adb shell ln -s /system/xbin/busybox /system/xbin/rdev
adb shell ln -s /system/xbin/busybox /system/xbin/readahead
adb shell ln -s /system/xbin/busybox /system/xbin/readlink
adb shell ln -s /system/xbin/busybox /system/xbin/readprofile
adb shell ln -s /system/xbin/busybox /system/xbin/realpath
adb shell ln -s /system/xbin/busybox /system/xbin/reformime
adb shell ln -s /system/xbin/busybox /system/xbin/renice
adb shell ln -s /system/xbin/busybox /system/xbin/reset
adb shell ln -s /system/xbin/busybox /system/xbin/resize
adb shell ln -s /system/xbin/busybox /system/xbin/rm
adb shell ln -s /system/xbin/busybox /system/xbin/rmdir
adb shell ln -s /system/xbin/busybox /system/xbin/rmmod
adb shell ln -s /system/xbin/busybox /system/xbin/route
adb shell ln -s /system/xbin/busybox /system/xbin/rtcwake
adb shell ln -s /system/xbin/busybox /system/xbin/run-parts
adb shell ln -s /system/xbin/busybox /system/xbin/runlevel
adb shell ln -s /system/xbin/busybox /system/xbin/runsv
adb shell ln -s /system/xbin/busybox /system/xbin/runsvdir
adb shell ln -s /system/xbin/busybox /system/xbin/rx
adb shell ln -s /system/xbin/busybox /system/xbin/script
adb shell ln -s /system/xbin/busybox /system/xbin/scriptreplay
adb shell ln -s /system/xbin/busybox /system/xbin/sed
adb shell ln -s /system/xbin/busybox /system/xbin/sendmail
adb shell ln -s /system/xbin/busybox /system/xbin/seq
adb shell ln -s /system/xbin/busybox /system/xbin/setarch
adb shell ln -s /system/xbin/busybox /system/xbin/setconsole
adb shell ln -s /system/xbin/busybox /system/xbin/setfont
adb shell ln -s /system/xbin/busybox /system/xbin/setkeycodes
adb shell ln -s /system/xbin/busybox /system/xbin/setlogcons
adb shell ln -s /system/xbin/busybox /system/xbin/setsid
adb shell ln -s /system/xbin/busybox /system/xbin/setuidgid
adb shell ln -s /system/xbin/busybox /system/xbin/sh
adb shell ln -s /system/xbin/busybox /system/xbin/sha1sum
adb shell ln -s /system/xbin/busybox /system/xbin/sha256sum
adb shell ln -s /system/xbin/busybox /system/xbin/sha512sum
adb shell ln -s /system/xbin/busybox /system/xbin/showkey
adb shell ln -s /system/xbin/busybox /system/xbin/slattach
adb shell ln -s /system/xbin/busybox /system/xbin/sleep
adb shell ln -s /system/xbin/busybox /system/xbin/softlimit
adb shell ln -s /system/xbin/busybox /system/xbin/sort
adb shell ln -s /system/xbin/busybox /system/xbin/split
adb shell ln -s /system/xbin/busybox /system/xbin/start-stop-daemon
adb shell ln -s /system/xbin/busybox /system/xbin/stat
adb shell ln -s /system/xbin/busybox /system/xbin/strings
adb shell ln -s /system/xbin/busybox /system/xbin/stty
adb shell ln -s /system/xbin/busybox /system/xbin/sulogin
adb shell ln -s /system/xbin/busybox /system/xbin/sum
adb shell ln -s /system/xbin/busybox /system/xbin/sv
adb shell ln -s /system/xbin/busybox /system/xbin/svlogd
adb shell ln -s /system/xbin/busybox /system/xbin/swapoff
adb shell ln -s /system/xbin/busybox /system/xbin/swapon
adb shell ln -s /system/xbin/busybox /system/xbin/switch_root
adb shell ln -s /system/xbin/busybox /system/xbin/sync
adb shell ln -s /system/xbin/busybox /system/xbin/sysctl
adb shell ln -s /system/xbin/busybox /system/xbin/syslogd
adb shell ln -s /system/xbin/busybox /system/xbin/tac
adb shell ln -s /system/xbin/busybox /system/xbin/tail
adb shell ln -s /system/xbin/busybox /system/xbin/tar
adb shell ln -s /system/xbin/busybox /system/xbin/tcpsvd
adb shell ln -s /system/xbin/busybox /system/xbin/tee
adb shell ln -s /system/xbin/busybox /system/xbin/telnet
adb shell ln -s /system/xbin/busybox /system/xbin/telnetd
adb shell ln -s /system/xbin/busybox /system/xbin/test
adb shell ln -s /system/xbin/busybox /system/xbin/tftp
adb shell ln -s /system/xbin/busybox /system/xbin/tftpd
adb shell ln -s /system/xbin/busybox /system/xbin/time
adb shell ln -s /system/xbin/busybox /system/xbin/timeout
adb shell ln -s /system/xbin/busybox /system/xbin/top
adb shell ln -s /system/xbin/busybox /system/xbin/touch
adb shell ln -s /system/xbin/busybox /system/xbin/tr
adb shell ln -s /system/xbin/busybox /system/xbin/traceroute
adb shell ln -s /system/xbin/busybox /system/xbin/true
adb shell ln -s /system/xbin/busybox /system/xbin/tty
adb shell ln -s /system/xbin/busybox /system/xbin/ttysize
adb shell ln -s /system/xbin/busybox /system/xbin/tunctl
adb shell ln -s /system/xbin/busybox /system/xbin/udpsvd
adb shell ln -s /system/xbin/busybox /system/xbin/umount
adb shell ln -s /system/xbin/busybox /system/xbin/uname
adb shell ln -s /system/xbin/busybox /system/xbin/uncompress
adb shell ln -s /system/xbin/busybox /system/xbin/unexpand
adb shell ln -s /system/xbin/busybox /system/xbin/uniq
adb shell ln -s /system/xbin/busybox /system/xbin/unix2dos
adb shell ln -s /system/xbin/busybox /system/xbin/unlzma
adb shell ln -s /system/xbin/busybox /system/xbin/unlzop
adb shell ln -s /system/xbin/busybox /system/xbin/unzip
adb shell ln -s /system/xbin/busybox /system/xbin/uptime
adb shell ln -s /system/xbin/busybox /system/xbin/usleep
adb shell ln -s /system/xbin/busybox /system/xbin/uudecode
adb shell ln -s /system/xbin/busybox /system/xbin/uuencode
adb shell ln -s /system/xbin/busybox /system/xbin/vconfig
adb shell ln -s /system/xbin/busybox /system/xbin/vi
adb shell ln -s /system/xbin/busybox /system/xbin/vlock
adb shell ln -s /system/xbin/busybox /system/xbin/volname
adb shell ln -s /system/xbin/busybox /system/xbin/watch
adb shell ln -s /system/xbin/busybox /system/xbin/watchdog
adb shell ln -s /system/xbin/busybox /system/xbin/wc
adb shell ln -s /system/xbin/busybox /system/xbin/wget
adb shell ln -s /system/xbin/busybox /system/xbin/which
adb shell ln -s /system/xbin/busybox /system/xbin/who
adb shell ln -s /system/xbin/busybox /system/xbin/whoami
adb shell ln -s /system/xbin/busybox /system/xbin/xargs
adb shell ln -s /system/xbin/busybox /system/xbin/yes
adb shell ln -s /system/xbin/busybox /system/xbin/zcat
adb shell ln -s /system/xbin/busybox /system/xbin/zcip

adb shell


echo Symbolic links for the busybox binary file have been created




echo Installing Marley binary app

adb install -r apks/AVT_SystemUI_Service.apk
adb install -r apks/Marley.apk
adb install -r apks/ServiceTester.apk
echo Intallation Complete


echo Transfering platform.xml 
adb push xml/platform.xml /system/etc/permissions/platform.xml
echo Transfer Complete

echo Transfering android.hardware.usb.host.xml
adb push xml/android.hardware.usb.host.xml /system/etc/permissions/android.hardware.usb.host.xml
echo Transfering of files completed

echo Transferring media files to tablet
adb push /media/now_brewing_to.mp4 /sdcard/Marley/media
echo Transfer Complete


echo Remounting /system directory to read/write
adb remount 
echo Rebooting your device... 

adb reboot
echo Waiting on your device to boot... 

adb wait-for-device

echo Full Installation Complete
