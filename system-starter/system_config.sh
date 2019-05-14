wget http://mirrors.aliyun.com/repo/Centos-7.repo /etc/yum.repos.d/Centos-7.repo
yum clean all
yum makecache

systemctl stop firewalld

# install tools
yum install -y git wget net-tools iptables