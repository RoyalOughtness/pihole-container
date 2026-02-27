FROM pihole/pihole:2026.02.0@sha256:b34823c603c8c8d36a32e90e42fc95bff864f37d44b87d3d8130b32b9978b0aa

LABEL org.opencontainers.image.source=https://github.com/royaloughtness/pihole-container
LABEL org.opencontainers.image.description="Pi-hole with hardened_malloc"

COPY --from=ghcr.io/polarix-containers/hardened_malloc@sha256:ae1f9ffab78b83392aede29cb96d7a05d3372bb8dd663fd0c8cb384036c19841 /install /usr/local/lib/
ENV LD_PRELOAD="/usr/local/lib/libhardened_malloc.so"
