FROM lscr.io/linuxserver/chromium:latest

ENV PUID=1000
ENV PGID=1000
ENV TZ=America/Toronto

ENV CHROME_CLI="--disable-dev-shm-usage --disable-extensions --disable-background-networking --disable-sync --disable-translate --disable-default-apps --disable-renderer-backgrounding --disable-background-timer-throttling --no-first-run"

EXPOSE 3000
