FROM pihole/pihole:2026.02.0@sha256:ee348529cea9601df86ad94d62a39cad26117e1eac9e82d8876aa0ec7fe1ba27

LABEL org.opencontainers.image.source=https://github.com/royaloughtness/pihole-container
LABEL org.opencontainers.image.description="Pi-hole with hardened_malloc"

COPY --from=ghcr.io/polarix-containers/hardened_malloc@sha256:ae1f9ffab78b83392aede29cb96d7a05d3372bb8dd663fd0c8cb384036c19841 /install /usr/local/lib/
ENV LD_PRELOAD="/usr/local/lib/libhardened_malloc.so"
