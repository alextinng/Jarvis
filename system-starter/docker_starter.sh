yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --enable docker-ce-nightly
yum -y install docker-ce docker-ce-cli containerd.io
systemctl start docker

echo "{
  \"registry-mirrors\": [\"http://hub-mirror.c.163.com\"]
}" >> /etc/docker/daemon.json

service docker restart


# install service
docker pull mysql:5.6
mkdir -p /var/lib/mysql /var/log/mysql/logs /etc/mysql/conf
docker run -p 3306:3306 --name mysql -v /etc/mysql/conf:/etc/mysql/conf.d -v /var/log/mysql/logs:/logs -v /var/lib/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=Sunny110_ -d mysql:5.6

# install redis
docker pull  redis
mkdir -p /var/lib/redis/data
docker run -p 6379:6379 -v /var/lib/redis/data:/data  -d redis redis-server

echo "pid=$(docker ps | grep redis | awk '{print $1}')
docker exec -it $pid redis-cli" >> /usr/bin/redis-cli
chmod 755 /usr/bin/redis-cli

# install elastic-search
docker pull elasticsearch:6.5.4
docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:6.5.4
