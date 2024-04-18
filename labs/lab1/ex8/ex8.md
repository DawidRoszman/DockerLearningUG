**Zadanie 8 (0.1 pkt)**

Na komputerze lokalnym z wykorzystaniem Docker Desktop wykonaj następujące polecenia: 

1. Uruchom kontener Busybox w Docker przy użyciu Docker CLI.

2. Zmodyfikuj plik index.html wewnątrz kontenera Busybox tak, aby wyświetlał napis "Hello World!".

3. Zmodyfikuj plik index.html wewnątrz kontenera Busybox tak, aby wyświetlał nazwę hosta, na którym działa kontener.

4. Skopiuj zmodyfikowany plik index.html z kontenera Busybox na lokalny komputer.

Jako odpowiedź prześlij printscreen z widocznym rozwiązaniem w konsoli.

Nie zapomnij przesłać zadania do oceny oraz sprawdzenia koledze/koleżance.

```bash
docker run --name "l1e8" -it busybox
/ # echo "Hello World!" > index.html
/ # echo $(hostname) >> index.html
/ # cat index.html
```

Na lokalnej maszynie:
```bash
docker cp l1e8:/index.html ./labs/lab1/ex8 
```