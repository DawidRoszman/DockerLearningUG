**Zadanie 3 (0.6 pkt)**

Napisz skrypt w powłoce Bash, który tworzy kontener Docker z aplikacją Node.js oraz reverse proxy serwerem Nginx z włączoną obsługą SSL i cache. Aplikacja Node.js powinna być dostępna pod adresem "localhost:3000", a reverse proxy serwer Nginx powinien nasłuchiwać na porcie 80 i przekierowywać żądania na aplikację Node.js.

Umieść również testy, sprawdzające poprawność powyższego skryptu.

Wskazówki: 

1. Katalog w którym będziemy trzymać cache, powinien być przypisany do użytkownika o nazwie nginx (który istnieje)
2. Należy w kontenerze zainstalować openssl w celu wygenerowania certyfikatu.
3. Do przeładowywania konfiguracji nginx można skorzystać z polecenia nginx -s reload
4. Aplikacje node można trzymać w tym samym kontenerze lub można dołączyć kontener node za pomocą polecenia: docker run --name my-nginx-container -d -p 80:80 -p 443:443 --link my-node-app:my-node-app nginx. Jest to jednak przestarzała funkcja i zaleca się jak tak skorzystać z sieci

Jako odpowiedź prześlij printscreen z działania skryptu oraz kod skryptu (może być w postaci linku do repozytorium).

Nie zapomnij przesłać zadania do oceny oraz sprawdzenia koledze/koleżance.
