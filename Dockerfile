FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY . /src

RUN cd /src && npm install @whiskeysockets/baileys@6.6.0 @adiwajshing/keyed-db@^0.2.4 @distube/ytdl-core@^4.13.5 @ffmpeg-installer/ffmpeg@^1.1.0 @hapi/boom@^10.0.1 anime-wallpaper@^1.0.2 api-dylux@^1.4.4 aptoide-scraper@^1.0.1 awesome-phonenumber@^5.9.0 axios@^1.4.0 booru@^2.6.5 chalk@^4.1.2 cheerio@^1.0.0-rc.12 cookie@^0.5.0 crypto@^1.0.1 request@^2.88.2 file-type@^16.5.3 fluent-ffmpeg@^2.1.2 form-data@^4.0.0 fs-extra@^11.1.1 g-i-s@^2.1.7 google-tts-api@^2.0.2 google-it@^1.6.2 human-readable@^0.2.1 imgur@2.3.0 javascript-obfuscator@^4.0.0 jimp@^0.16.13 jsdom@^22.1.0 lodash@^4.17.21 mal-scraper@^2.11.4 mathjs@^11.3.0 megajs@^1.1.4 moment-timezone@^0.5.43 node-cron@^3.0.0 node-fetch@^2.6.11 node-os-utils@^1.3.7 node-webpmux@^3.1.7 node-id3@^0.2.3 node-youtube-music@^0.8.3 object-query-string@^1.2.0 pastebin-js@^1.0.6 performance-now@^2.1.0 pino@^8.14.1 qrcode@^1.5.3 qrcode-reader@^1.0.4 qrcode-terminal@^0.12.0 readline@^1.3.0 request@^2.88.2 set-cookie@^0.0.4 steno@^1.0.0 translate-google-api@^1.0.4 @vitalets/google-translate-api@^9.2.0 ytdl-core youtubedl-core youtube-yts@^2.0.0 yt-search@^2.10.4

EXPOSE 4000

CMD ["node", "/src/index.js"]