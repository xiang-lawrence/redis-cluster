FROM  10.16.117.252/redis-cluster/redis-cluster:1.1.4.

MAINTAINER  hyzhangp   <hyzhangp@isscloud.com> 

RUN mkdir -p /opt/redis_cluster

#RUN cp -arp /opt/redis-cluster/* /opt/redis_cluster/

ADD run.sh /opt/

RUN chmod +x /opt/run.sh

#CMD  ["/bin/bash","-c","read"]
