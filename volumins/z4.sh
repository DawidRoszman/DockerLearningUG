# Napisz skrypt, który zabezpieczy woluminy hasłem, utworzy zaszyfrowany wolumin i odszyfruje go przy użyciu podanego hasła.

# Wskazówka: Należy utworzyć archiwum za pomocą polecenia tar oraz zaszyfrować/odszyfrować plik za pomocą polecenia gpg.

#!/bin/bash

read -p "Enter Docker volume name: " volume
read -sp "Enter password: " password
echo

temp_dir=$(pwd)


docker run --rm -v $volume:/volume -v $temp_dir:/backup alpine tar czf /backup/$volume.tar.gz /volume

echo $password | gpg --batch --yes --passphrase-fd 0 --symmetric --cipher-algo AES256 $temp_dir/$volume.tar.gz

rm $temp_dir/$volume.tar.gz

echo $password | gpg --batch --yes --passphrase-fd 0 --output $temp_dir/$volume.tar.gz --decrypt $temp_dir/$volume.tar.gz.gpg

echo "Decrypted archive is located at $temp_dir/$volume.tar.gz"