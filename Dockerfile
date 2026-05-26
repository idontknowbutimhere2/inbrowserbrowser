FROM lscr.io/linuxserver/chromium:latest

ENV PUID=1000
ENV PGID=1000
ENV TZ=America/Toronto

ENV CHROME_CLI="--disable-gpu --disable-software-rasterizer --disable-dev-shm-usage --disable-extensions --disable-background-networking --disable-sync --disable-translate --disable-default-apps --disable-popup-blocking --disable-renderer-backgrounding --disable-background-timer-throttling --disable-ipc-flooding-protection --no-first-run --no-sandbox --disable-features=site-per-process"

EXPOSE 3000
