FROM nginx:latest
WORKDIR /usr/share/nginx/html

LABEL traefik.http.routers.userarea.rule PathPrefix(`/user`)
#LABEL traefik.http.routers.userarea.middlewares target_is_static@file,auth@file,errorcats@docker
LABEL traefik.http.routers.userarea.middlewares auth_then_strip@file,errorcats@docker

COPY . .
