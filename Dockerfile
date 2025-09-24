FROM mirror.gcr.io/library/debian:13-slim


RUN apt-get update -y && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    xterm \
    xvfb \
    x11vnc \
    xfce4 \
    xfce4-goodies \
    dbus-x11 \
    novnc \
    websockify \
    x11-apps \
    firefox-esr

WORKDIR /app

COPY entrypoint.sh /app/entrypoint.sh

EXPOSE 5900

RUN cp /usr/share/novnc/vnc_lite.html /usr/share/novnc/index.html
RUN sed -i 's/rfb.scaleViewport = readQueryVariable.*$/rfb.scaleViewport = true;/' /usr/share/novnc/index.html
EXPOSE 3001

ENTRYPOINT ["/app/entrypoint.sh"]
