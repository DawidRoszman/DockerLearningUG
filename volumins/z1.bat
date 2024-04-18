@REM Napisz skrypt, który utworzy wolumin nginx_data, a następnie uruchomi kontener Nginx z tym woluminem zamontowanym w katalogu /usr/share/nginx/html. Zmień zawartość strony html za pomocą utworzonego wolumena.
docker volume create nginx_data
docker run -d -p 8080:80 --name nginx -v nginx_data:/usr/share/nginx/html nginx
docker exec -it nginx /bin/bash -c "echo '<h1>Welcome to docker!</h1>' > /usr/share/nginx/html/index.html"