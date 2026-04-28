FROM nginx:1.29-alpine

WORKDIR /usr/share/nginx/html
COPY app/index.html ./index.html

