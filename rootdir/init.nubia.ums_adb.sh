#!/system/bin/sh
factory=`getprop persist.sys.usb.factory`

case $factory in
	1)
		echo 0 > /sys/devices/virtual/android_usb/android0/enable
		usleep 2000
		echo 19D2 > /sys/devices/virtual/android_usb/android0/idVendor
		echo FFC5 > /sys/devices/virtual/android_usb/android0/idProduct
		echo diag,diag_mdm > /sys/class/android_usb/android0/f_diag/clients
		echo diag,mass_storage,adb > /sys/devices/virtual/android_usb/android0/functions
		echo 1 > /sys/devices/virtual/android_usb/android0/enable
	;;
	0)
		echo 0 > /sys/devices/virtual/android_usb/android0/enable
		usleep 2000
		echo 19D2 > /sys/devices/virtual/android_usb/android0/idVendor
		echo FFCD > /sys/devices/virtual/android_usb/android0/idProduct
		echo mass_storage,adb > /sys/devices/virtual/android_usb/android0/functions
		echo 1 > /sys/devices/virtual/android_usb/android0/enable
	;;
	*)
		echo 0 > /sys/devices/virtual/android_usb/android0/enable
		usleep 2000
		echo 19D2 > /sys/devices/virtual/android_usb/android0/idVendor
		echo FFC3 > /sys/devices/virtual/android_usb/android0/idProduct
		echo diag,diag_mdm > /sys/class/android_usb/android0/f_diag/clients
		echo hsic,tty,tty > /sys/class/android_usb/android0/f_serial/transports
		echo serial_hsic > /sys/class/android_usb/android0/f_serial/transport_names
		echo diag,serial,mass_storage,adb > /sys/devices/virtual/android_usb/android0/functions
		echo 1 > /sys/devices/virtual/android_usb/android0/enable
	;;
esac

exit 0
