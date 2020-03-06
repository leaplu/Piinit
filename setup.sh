#Set mouse
echo "usbhid.mousepoll=0" >>/boot/cmdline.txt

#Change Sources
sudo sed -i 's|http://raspbian.raspberrypi.org|https://mirrors.ustc.edu.cn/raspbian|g' /etc/apt/sources.list
sudo sed -i 's|http://archive.raspberrypi.org|https://mirrors.ustc.edu.cn/archive.raspberrypi.org|g' /etc/apt/sources.list.d/raspi.list

#Update System
apt update -yqq
apt upgrade -yqq
apt install vim xrdp -yqq
