FROM node AS builder

WORKDIR /opt/app

COPY package.json ./package.json

RUN npm install

COPY . .

RUN npm run build

FROM nginx

COPY --from=builder /opt/app/out /usr/share/nginx/html
