#!/bin/sh
dir="./backup/$(date +'%Y-%m-%d_%H-%M-%S')"
mkdir -p "$dir/keylayout" "$dir/keychars"

adb shell cp /system/usr/keylayout/Generic.kl /data/local/tmp/BaCkUp.kl
adb pull -a /data/local/tmp/BaCkUp.kl "$dir/keylayout"/Generic.kl
adb shell rm /data/local/tmp/BaCkUp.kl

adb shell cp /system/usr/keychars/Generic.kcm /data/local/tmp/BaCkUp.kcm
adb pull -a /data/local/tmp/BaCkUp.kcm "$dir/keychars"/Generic.kcm
adb shell rm /data/local/tmp/BaCkUp.kcm


adb shell su -c 'mount -o rw,remount /system'

adb shell "[ -f /system/usr/keylayout/Generic.kl~ ] || su -c 'cp /system/usr/keylayout/Generic.kl /system/usr/keylayout/Generic.kl~ && chmod 644 /system/usr/keylayout/Generic.kl~'"
adb shell "[ -f /system/usr/keychars/Generic.kcm~ ] || su -c 'cp /system/usr/keychars/Generic.kcm /system/usr/keychars/Generic.kcm~ && chmod 644 /system/usr/keychars/Generic.kcm~'"

adb push ./master/keychars/Generic.kcm /data/local/tmp/PaTcH.ChArS.KcM
adb shell su -c "busybox mv /data/local/tmp/PaTcH.ChArS.KcM /system/usr/keychars/Generic.kcm"
adb shell su -c "busybox chown 0:0 /system/usr/keychars/Generic.kcm"
adb shell su -c "busybox chmod 644 /system/usr/keychars/Generic.kcm"

adb push ./master/keylayout/Generic.kl /data/local/tmp/PaTcH.LaY.Kl
adb shell su -c "busybox mv /data/local/tmp/PaTcH.LaY.Kl /system/usr/keylayout/Generic.kl"
adb shell su -c "busybox chown 0:0 /system/usr/keylayout/Generic.kl"
adb shell su -c "busybox chmod 644 /system/usr/keylayout/Generic.kl"

adb shell su -c 'mount -o ro,remount /system'
