@REM Napisz skrypt, który utworzy wolumin nodejs_data, a następnie uruchomi kontener Node.js z tym woluminem zamontowanym w katalogu /app. Następnie utwórz wolumen o nazwie all_volumes i korzystając z wcześniej utworzonego wolumenu nginx_data, skopiuj pliki z katalogu /usr/share/nginx/html do woluminu all_volumes oraz pliki z katalogu app do woluminu all_volumes z poziomu kontenera. 

@REM Wskazówka: Należy oczywiście utworzyć te katalogi i jakieś przykładowe pliki wcześniej, aby mogło to zadziałać.
@REM docker run -d -p 8081:3000 --name nodejs -v nodejs_data:/app nodejs:16

docker volume create nodejs_data
docker run -d -p 8081:3000 --name nodejs -v nodejs_data:/app nodejs:16
docker cp ../express_server nodejs:/app
docker volume create all_volumes
docker run -d --rm -v nginx_data:/usr/share/nginx/html -v all_volumes:/nginx_data alpine sh -c "cd /usr/share/nginx/html; ls ; cp -av . /nginx_data"
docker run -d --rm -v nodejs_data:/app -v all_volumes:/nodejs_data alpine sh -c "cd /app; ls ; cp -av . /nodejs_data"
