# Napisz skrypt, który sprawdzi i wyświetli zużycie przestrzeni dyskowej wszystkich woluminów Docker w procentach.

# Wskazówka: Należy skorzystać z polecenia df. Natomiast wyciągnięcie odpowiednich danych można skorzystać z języka AWK lub znanych poleceń powłoki linux.

#!/bin/bash

docker volume ls -q | while read volume; do
  volume_size=$(docker run --rm -v $volume:/volume alpine df -h volume | awk 'NR==2{print $5}')

  echo "Volume: $volume"
  echo "Size: $volume_size"
done