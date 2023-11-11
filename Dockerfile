FROM nginx
LABEL name="test-docker-vue-cli-front"
LABEL version="1.0"
COPY ./dist/ /usr/share/nginx/html/
COPY ./test-docker-vue-cli-front.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
