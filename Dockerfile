FROM lscr.io/linuxserver/chromium:latest

ENV PUID=1000
ENV PGID=1000
ENV TZ=America/Toronto

ENV CHROME_CLI="--disable-extensions --disable-sync --disable-translate --disable-background-networking --disable-component-update --disable-default-apps --disable-dev-shm-usage --disable-features=Translate,BackForwardCache,MediaRouter,OptimizationHints --disable-renderer-backgrounding --disable-background-timer-throttling --disable-popup-blocking --mute-audio --no-first-run --homepage=https://google.com"

EXPOSE 3000
