## Redis Cluster Deployment

**By using docker-compose deploy a redis cluster** 

### Installation

1. Install [Docker](https://docs.docker.com/installation/#installation).

2. Install [docker-compose](https://docs.docker.com/compose/install/).

3. Download builded [image](https://hub.docker.com/r/jackeylov3/redis-demo) from public [Docker Hub Registry](https://registry.hub.docker.com/)
  
       docker pull jackeylov3/redis-demo

### Deployment

1. changing your own privite ip in docker-compose.yml file

        sed -i 's#127.0.0.1#YourIp#g'   docker-compose.yml

2. using docker-compose to start up redis cluter 

        docker-compose up -d 
   
3. asociated with the redis cluster 

        docker run -it --rm redis redis-cli --cluster create --cluster-replicas 1 YourIp:1001 YourIp:1002 YourIp:1003 YourIp:1004 YourIp:1005 YourIp:1006
   
4. check the redis cluster

        docker-compose ps -a  #check services up 
        docker run -it --rm --name check redis redis-cli -c -h YourIp -p 1001 
        redis command: cluster info, cluster nodes
                       set testkey "testvalues"
                       get testkey
-----------------------------------------------------------------------------------------------------------------------------------

###  Build image from source

```
git clone https://github.com/lwj714003758/docker-redis-cluster.git
cd redis_demo 
docker build -t jackeylov3/redis-demo . 
```

### You can read more about here :

- [docker-compose version3](https://docs.docker.com/compose/compose-file/)
- [redis中文手册](http://redisdoc.com/string/set.html)
- [redis 5.0新特性](https://juejin.im/post/5cc6a1a9e51d456e4a411ee2) 
