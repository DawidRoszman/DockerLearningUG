FROM node:latest AS builder

WORKDIR /opt/app

COPY package.json .

RUN npm install
RUN npm install -g typescript

COPY . .

RUN tsc index.ts

FROM node:latest

WORKDIR /opt/app

COPY --from=builder /opt/app/package.json package.json

RUN npm install

COPY --from=builder /opt/app/index.js .

CMD ["node", "index.js"]


