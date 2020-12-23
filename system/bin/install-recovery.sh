#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:21433604:01418e728f8dd0a26c57b076b3fc3b1dbe7a9542; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:16661760:5d76b6a1034cb58dee7ba1b7c2392f48efdae568 EMMC:/dev/block/bootdevice/by-name/recovery 01418e728f8dd0a26c57b076b3fc3b1dbe7a9542 21433604 5d76b6a1034cb58dee7ba1b7c2392f48efdae568:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
