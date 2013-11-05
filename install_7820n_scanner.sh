# installs Brother 7820N as a network scanner
sudo apt-get install -y sane-utils
sudo wget -O brscan_driver.deb http://www.brother.com/pub/bsc/linux/dlf/brscan2-0.2.5-1.amd64.deb
sudo dpkg -i brscan_driver.deb
sudo dpkg -l | grep Brother
brsaneconfig2 -a name=SCANNER model=MFC-7820N ip=192.168.1.99
brsaneconfig2 -q | grep SCANNER
sudo cp /usr/lib64/libbrscandec2.so.1.0.0 /usr/lib
sudo cp /usr/lib64/sane/libsane-brother2.so.1.0.7 /usr/lib/sane
sudo cp /usr/lib64/sane/libsane-brother2.so.1 /usr/lib/sane
sudo cp /usr/lib64/sane/libsane-brother2.so /usr/lib/sane
sudo cp /usr/lib64/libbrcolm2.so.1.0.1 /usr/lib
sudo cp /usr/lib64/libbrcolm2.so /usr/lib
sudo cp /usr/lib64/libbrscandec2.so.1 /usr/lib
sudo cp /usr/lib64/libbrscandec2.so /usr/lib
sudo cp /usr/lib64/libbrcolm2.so.1 /usr/lib
