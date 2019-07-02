FROM redis
LABEL maintaner="liuwenjie827@gmail.com"
EXPOSE 1001-1006
EXPOSE 11001-11006
COPY entrypoint.sh /usr/local/bin/
COPY redis.conf /etc/redis/redis.conf
WORKDIR /data
#修复时间和重写config配置
RUN set -ex; \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' >/etc/timezone && \
    chmod +x /usr/local/bin/entrypoint.sh && \
    chown redis:redis /etc/redis/redis.conf && \
    chmod 666 /etc/redis/redis.conf && \
    chmod -R  777 /data
#ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
#CMD ["nohup","redis-server","/etc/redis/redis.conf"]
