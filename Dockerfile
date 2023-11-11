FROM nginx
LABEL name="test-docker-vue-cli-front"
LABEL version="1.0"
# nginx 默认配置文件目录 include /etc/nginx/conf.d/*.conf;
# nginx 默认静态文件目录 /usr/share/nginx/html;
COPY ./dist /usr/share/nginx/html
COPY ./vue-cli-front.conf /etc/nginx/conf.d
WORKDIR /app
EXPOSE 80
