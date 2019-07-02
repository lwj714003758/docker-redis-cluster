#!/bin/sh
#只作用于当前进程,不作用于其创建的子进程

set -ex
#更换redis端口和bind IP
sed -i 's/REDIS_PORT/'$REDIS_PORT'/g' /etc/redis/redis.conf
sed -i 's/REDIS_ADDR/'$REDIS_ADDR'/g' /etc/redis/redis.conf

exec "$@"
