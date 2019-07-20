FROM node

ADD . /app

WORKDIR /app

RUN npm install

ENV PORT=8080
ENV CORSANYWHERE_WHITELIST=https://1inch.exchange,http://localhost:4200,https://localhost:4200

CMD ["node", "/app/server.js"]

EXPOSE 8080
