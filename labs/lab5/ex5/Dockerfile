FROM ubuntu AS ubuntunext

RUN apt update
RUN apt install -y nodejs npm

WORKDIR /opt/app
COPY ./myfrontend .

RUN npm install
CMD ["npm", "run", "build"]

FROM nginx
COPY --from=ubuntunext /opt/app/out /var/www/html
COPY ./nginx /etc/nginx/conf.d/

# CMD ["nginx" , "-g", "deamon", "off"];
# niepotrzebne

# Można szybciej bez konfiguracji NGINX
# FROM nginx
# COPY static-html-directory /usr/share/nginx/html