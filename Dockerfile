FROM caddy:2.7.4-builder AS builder
RUN xcaddy build \
  --with github.com/caddy-dns/cloudflare \
  --with github.com/lucaslorentz/caddy-docker-proxy/v2

FROM caddy:2.7.4-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
RUN apk update && apk upgrade

CMD ["caddy", "docker-proxy"]
