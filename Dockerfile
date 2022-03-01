FROM nginx:latest
WORKDIR /usr/share/nginx/html

LABEL traefik.http.routers.userarea.rule PathPrefix(`/user`)
LABEL traefik.http.routers.userarea.middlewares errorcats@docker

COPY . .
