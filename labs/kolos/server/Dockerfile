FROM node:latest AS builder

WORKDIR /opt/app

COPY ./package.json .

RUN npm install

COPY . .

FROM nginx

ENV PORT=5000

RUN apt-get update -y ; apt-get install -y nodejs

WORKDIR /var/www/server

COPY --from=builder /opt/app/ /var/www/server

EXPOSE 80

CMD ["/bin/bash", "-c", "node index.js &;nginx -g daemon off;"]