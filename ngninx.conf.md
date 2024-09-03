#Copy this file to your nginx.conf file.

#user  nobody;
worker_processes  1;

#error_log  logs/error.log;
#error_log  logs/error.log  notice;
#error_log  logs/error.log  info;

#pid        logs/nginx.pid;


events {
    worker_connections  1024;
}


http {
    include       mime.types;
    default_type  application/octet-stream;
    include /usr/local/etc/nginx/sites-enabled/*;
    sendfile        on;
    keepalive_timeout  65;
    upstream backendservice{
        server localhost:3001;
        server localhost:3002;
        server localhost:3003;
        server localhost:3004;
    }
    server {
        listen       80;
        server_name  localhost;
        location / {
            proxy_pass  http://backendservice;
        }
    }
}