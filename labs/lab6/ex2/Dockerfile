FROM node

ARG SERVER_PORT=5000

ENV PORT=${SERVER_PORT}

COPY ./backend /opt/app

WORKDIR /opt/app

RUN npm install

CMD ["node", "server.js"]

EXPOSE ${SERVER_PORT}
