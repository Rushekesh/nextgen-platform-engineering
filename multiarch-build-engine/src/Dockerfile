FROM --platform=$BUILDPLATFORM nginx:alpine
ARG BUILDPLATFORM
ARG TARGETPLATFORM
ARG TARGETARCH
RUN echo "<!DOCTYPE html><html><head><title>Multi-Arch Verification</title></head><body><h2>System Architecture Confirmed</h2><p>Build Platform: $BUILDPLATFORM</p><p>Target Platform: $TARGETPLATFORM</p><p>Architecture: $TARGETARCH</p></body></html>" > /usr/share/nginx/html/index.html
LABEL org.opencontainers.image.title="docker-multiarch-buildx-engineering"
