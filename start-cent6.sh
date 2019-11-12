wget --no-check-certificate  https://raw.githack.com/zzzhenng/ss-file/master/shadowsocks.sh
chmod +x shadowsocks.sh
./shadowsocks.sh 2>&1 | tee shadowsocks.log
sed -i '$a echo 3 > /proc/sys/net/ipv4/tcp_fastopen' /etc/rc.local
sed -i '$a net.ipv4.tcp_fastopen=3' /etc/sysctl.conf
sed -i 's/false/true/g' /etc/shadowsocks.json
/etc/init.d/shadowsocks restart
rpm -ivh http://soft.91yun.pw/ISO/Linux/CentOS/kernel/kernel-2.6.32-504.3.3.el6.x86_64.rpm --force
reboot
wget -N --no-check-certificate https://github.com/91yun/serverspeeder/raw/master/serverspeeder-v.sh	&& bash serverspeeder-v.sh CentOS 7.1 3.10.0-229.1.2.el7.x86_64x64 3.11.20.4 serverspeeder_3283
