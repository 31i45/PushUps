# 基于官方nginx:alpine镜像
FROM nginx:alpine

# 执行更新并安装dav-ext模块
RUN apk update && \
    apk add --no-cache nginx-mod-http-dav-ext && \
    # 创建模块配置目录
    mkdir -p /etc/nginx/modules-enabled && \
    # 写入模块加载配置
    echo 'load_module modules/ngx_http_dav_ext_module.so;' > /etc/nginx/modules-enabled/dav.conf && \
    # 关键：创建Nginx处理PUT请求所需的临时目录，并设置权限
    mkdir -p /var/tmp/nginx/client_body && \
    # Nginx运行用户为nginx（UID 101），修改目录所有者
    chown -R nginx:nginx /var/tmp/nginx && \
    # 设置目录权限
    chmod -R 755 /var/tmp/nginx && \
    # 清理apk缓存
    rm -rf /var/cache/apk/*

# 保持nginx默认启动命令
CMD ["nginx", "-g", "daemon off;"]