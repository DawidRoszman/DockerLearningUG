passwd user - zmiana hasła użytkownika user
useradd user - dodanie użytkownika user
service ssh start
service ssh reload
service ssh status
echo "AllowUsers test" >> /etc/ssh/sshd_config
// Jak dodamy tutaj usera, to już nie wszyscy są allowed
// Domyślnie wszyscy są allowed

/etc/nginx/templates/default.conf.template - miejsce na konfiguracje nginx'a (można dawać ENV zmienne)


Chyba dobry practice:
/var/www/html - folder dla html'i
/etc/nginx/conf.d/ <- tutaj dajemy wszystkie configi
default.conf - bazowy config (best practice)
docker system df - wyświetla zużycie rzeczy dockera