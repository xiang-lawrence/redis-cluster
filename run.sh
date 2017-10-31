#!/bin/bash
for i in {1..9}
do
  if [ ! -d "/opt/redis_cluster/800${i}" ];then
    cp -arp /opt/redis-cluster/800${i} /opt/redis_cluster/
  fi
done
case $1 in
  cluster-01)
    redis-server /opt/redis_cluster/8001/redis.conf
    redis-server /opt/redis_cluster/8004/redis.conf
    tail -f /var/log/redis/*.log
    ;;
  cluster-02)
    redis-server /opt/redis_cluster/8002/redis.conf
    redis-server /opt/redis_cluster/8005/redis.conf
    tail -f /var/log/redis/*.log
    ;;
  cluster-03)
    redis-server /opt/redis_cluster/8003/redis.conf
    redis-server /opt/redis_cluster/8006/redis.conf
    tail -f /var/log/redis/*.log
    ;;
esac
