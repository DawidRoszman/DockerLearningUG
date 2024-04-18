**Zadanie 7 (0.2 pkt)**

Na komputerze lokalnym z wykorzystaniem Docker Desktop wykonaj następujące polecenia: 

    Stwórz kontener z obrazem Ubuntu, który będzie działał w trybie interaktywnym (ang. interactive mode).
    Zainstaluj w kontenerze serwer SSH (openssh-server).
    Utwórz nowego użytkownika o nazwie test z hasłem test.
    Skonfiguruj serwer SSH tak, aby użytkownik test miał dostęp do kontenera tylko przez SSH (z poziomu kontenera lub hosta).
    Wykonaj połączenie SSH z kontenerem, używając użytkownika test.

Wskazówki: 

     Plik konfiguracyjne serwera ssh znajduje się w /etc/ssh/sshd_config
    Uruchomienie serwera ssh odbywa się poprzez polecenie service ssh start
    Połączenie ssh z poziomu hosta możemy uzyskać za pomocą polecenia: ssh test@$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' moj_kontener)
    Więcej informacji o konfiguracji serwera ssh znajduje się na stronie: https://www.ssh.com/academy/ssh/sshd_config

Jako odpowiedź prześlij printscreen z widocznym rozwiązaniem w konsoli.

Nie zapomnij przesłać zadania do oceny oraz sprawdzenia koledze/koleżance.

### Odpowiedź:
```bash
docker run --name "l1e7" -p 5050:22 -it ubuntu
apt update
apt install openssh-server
useradd test -p "test"
cat /etc/passwd # sprawdzenie czy dodaliśmy

service ssh start
```

Z hosta:
```bash
ssh test@localhost -p 5050
```
