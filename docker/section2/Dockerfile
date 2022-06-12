FROM nginx:alpine
RUN apk add vim
WORKDIR /usr/share/nginx
COPY ./index.html ./html/index.html
CMD ["nginx", "-g", "daemon off;"]