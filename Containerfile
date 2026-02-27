FROM pihole/pihole

LABEL org.opencontainers.image.source=https://github.com/royaloughtness/pihole-container
LABEL org.opencontainers.image.description="Pi-hole with hardened_malloc"

COPY --from=ghcr.io/polarix-containers/hardened_malloc:latest /install /usr/local/lib/
ENV LD_PRELOAD="/usr/local/lib/libhardened_malloc.so"
