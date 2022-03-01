FROM nginx:latest
WORKDIR /usr/share/nginx/html

LABEL traefik.http.routers.frontpage.rule PathPrefix(`/user`)
LABEL traefik.http.routers.frontpage.middlewares errorcats@docker

COPY . .
