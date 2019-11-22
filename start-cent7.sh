yum install -y net-tools wget vim
wget --no-check-certificate  https://github.com/zzzhenng/ss-file/blob/master/shadowsocks.sh
chmod +x shadowsocks.sh
./shadowsocks.sh 2>&1 | tee shadowsocks.log
sed -i '$a echo 3 > /proc/sys/net/ipv4/tcp_fastopen' /etc/rc.local
sed -i '$a net.ipv4.tcp_fastopen=3' /etc/sysctl.conf
sed -i 's/false/true/g' /etc/shadowsocks.json
/etc/init.d/shadowsocks restart
rpm -ivh http://soft.91yun.org/ISO/Linux/CentOS/kernel/kernel-3.10.0-229.1.2.el7.x86_64.rpm --force
yum install net-tools -y
reboot

wget -N --no-check-certificate https://github.com/91yun/serverspeeder/raw/master/serverspeeder.sh && bash serverspeeder.sh
