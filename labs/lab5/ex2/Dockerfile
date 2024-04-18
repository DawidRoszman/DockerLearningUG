FROM node
WORKDIR /app
COPY ./app ./
ENV PORT=5000
RUN npm install
# RUN - wykonuje się w trakcie tworzenia obrazu
EXPOSE 5000
CMD [ "node",  "index.js"]
# CMD - w trakcie budowy kontenera