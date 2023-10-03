# Caddy-Cloudflare-Proxy

[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-zenjoy%2Fcaddy--cloudflare--s3-lightgrey?style=flat)](https://hub.docker.com/r/zenjoy/caddy-cloudflare-proxy)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/zenjoy/docker-caddy-cloudflare-proxy?label=version)](https://github.com/zenjoy/docker-caddy-cloudflare-proxy/tags)
[![License](https://img.shields.io/github/license/zenjoy/docker-caddy-cloudflare-proxy)](https://github.com/zenjoy/docker-caddy-cloudflare-proxy/blob/main/LICENSE)

The official [Caddy](https://hub.docker.com/_/caddy) Docker image with following modules added:

- [caddy-dns/cloudflare](https://github.com/caddy-dns/cloudflare) allows DNS-01 ACME validation
- [lucaslorentz/caddy-docker-proxy](https://github.com/lucaslorentz/caddy-docker-proxy) enables
  Caddy to be used as a reverse proxy for Docker containers via labels

Available on Docker Hub or GitHub Container Registry (GHCR) for AMD64, ARM64, and ARMv7.

```sh
# Docker Hub
docker pull zenjoy/caddy-cloudflare-proxy:latest

# GHCR
docker pull ghcr.io/zenjoy/caddy-cloudflare-proxy:latest
```

## Building

You can easily build the Docker image locally by doing

```sh
docker build -t caddy-cloudflare-proxy .
```

## Container signatures

All images are automatically signed via [Cosign](https://docs.sigstore.dev/cosign/overview/) using
[keyless signatures](https://docs.sigstore.dev/cosign/keyless/). You verify the integrity of these
images as follows:

```sh
cosign verify \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com \
  --certificate-identity-regexp https://github.com/zenjoy/docker-caddy-cloudflare-proxy/.github/workflows/ \
  zenjoy/caddy-cloudflare-proxy:latest
```

## Contributing

Feel free to contribute and make things better by opening an
[Issue](https://github.com/zenjoy/docker-caddy-cloudflare-proxy/issues) or
[Pull Request](https://github.com/zenjoy/docker-caddy-cloudflare-proxy/pulls).

## License

View
[license information](https://github.com/zenjoy/docker-caddy-cloudflare-proxy/blob/main/LICENSE) for
the software contained in this image.
