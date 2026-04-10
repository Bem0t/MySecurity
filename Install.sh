echo -e "Выберите вариант установки:\n"

echo -e "1) Установить\n"
echo -e "2) Удалить\n"
echo -e "3) Сделать бэкап\n"
read -p "Выберите вариант установки: " var

case "$var" in
	1) 
		echo "Установка\n" 
		bash <(wget -qO- https://raw.githubusercontent.com/Bem0t/MySecurity/refs/heads/main/x-ui-pro.sh) -install yes -panel 1 -ONLY_CF_IP_ALLOW no
		;;
	2) 
		echo "Удаление\n" 
		sudo su -c "bash <(wget -qO- x-ui-pro.sh x-ui-pro.sh https://raw.githubusercontent.com/Bem0t/MySecurity/refs/heads/main/x-ui-pro.sh) -Uninstall yes"
		;;
	3) 
		echo "Бэкап\n" 
		sudo su -c "bash <(wget -qO- https://raw.githubusercontent.com/Bem0t/MySecurity/refs/heads/main/backup.sh)"
		;;
	*) echo "Неверный вариант" ;;
esac