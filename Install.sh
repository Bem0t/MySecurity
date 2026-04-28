#!/bin/bash

echo "Выберите вариант установки:"
echo "1) Установить"
echo "2) Удалить"
echo "3) Сделать бэкап"

read -p "Выберите вариант установки: " var

case "$var" in
    1)
        echo "Установка"
        bash <(wget -qO- https://raw.githubusercontent.com/Bem0t/MySecurity/refs/heads/main/x-ui-pro.sh) -install yes -panel 1 -ONLY_CF_IP_ALLOW no
        ;;
    2)
        echo "Удаление"
        bash <(wget -qO- https://raw.githubusercontent.com/Bem0t/MySecurity/refs/heads/main/x-ui-pro.sh) -Uninstall yes
        ;;
    3)
        echo "Бэкап"
        bash <(wget -qO- https://raw.githubusercontent.com/Bem0t/MySecurity/refs/heads/main/backup.sh)
        ;;
    *)
        echo "Неверный вариант"
        ;;
esac
