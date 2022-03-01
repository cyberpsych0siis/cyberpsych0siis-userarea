FROM nginx:latest
WORKDIR /usr/share/nginx/html

LABEL traefik.http.routers.userarea.rule PathPrefix(`/user`)
LABEL traefik.http.routers.userarea.middlewares target_is_static@file,errorcats@docker

COPY . .
