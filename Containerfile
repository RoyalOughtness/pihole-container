FROM pihole/pihole:2026.02.0

LABEL org.opencontainers.image.source=https://github.com/RoyalOughtness/pihole-container

COPY --from=ghcr.io/polarix-containers/hardened_malloc:latest /install /usr/local/lib/
ENV LD_PRELOAD="/usr/local/lib/libhardened_malloc.so"
