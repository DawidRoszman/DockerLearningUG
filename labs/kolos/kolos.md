Stwórz prostą aplikację webową w JavaScript, a następnie przygotuj pliku Dockerfile wykorzystującego kompilację wieloetapową do zbudowania i uruchomienia aplikacji.
Aplikacja będzie prostym serwerem HTTP, który na żądanie zwraca dynamicznie generowany czas serwera.
W kolejnych etapach będziemy korzystać ze zmiennych środowiskowych oraz sieci w Docker.
Kroki do wykonania:
(5 pkt) Utwórz prostą aplikację serwera HTTP w JavaScript (np. używając frameworka Express.js).
Stwórz plik Dockerfile, który: 
(1 pkt) Wykorzysta kompilację wieloetapową.
(3 pkt) W pierwszym etapie zbuduje aplikację.
(3 pkt) W drugim etapie przekaże aplikację do innego obrazu (np. alpine lub nginx) i uruchomi ją.
(1 pkt) Użyj zmiennych środowiskowych w pliku Dockerfile, aby konfigurować aplikację (np. ustawienie portu serwera).
(1 pkt) Zdefiniuj sieć w Docker dla swojej aplikacji.
(2 pkt) Optymalizacja i styl pliku Dockerfile.
(3 pkt) Utwórz skrypt, który będzie budował obraz na podstawie wcześniej utworzonego pliku Dockerfile, następnie zdefiniuje sieć do aplikacji i odpali kontener w tej sieci bazując na wcześniej uruchomionym obrazie.
(1 pkt) Umieść obraz w serwisie Docker Hub.
Jako odpowiedź prześlij spakowaną aplikację (wraz z plikiem Dockerfile i skryptem) do prowadzącego.
Uwaga. Jeżeli skrypt nie będzie się odpalał poprawnie, zadanie od punktu 2 nie będzie sprawdzane.