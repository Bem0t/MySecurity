echo -e "Выберите вариант установки:\n"

echo -e "1) Установить\n"
echo -e "2) Удалить\n"
echo -e "3) Сделать бэкап\n"
read -p "Выберите вариант установки: " var

case "$var" in
	1) 
		echo "Установка\n" 
		wget -qO- x-ui-pro.sh https://gitflic.ru/project/bem0t/mysecurityconection/blob/raw?file=x-ui-pro.sh&commit=a5d1023459d5e818d3e7b051adb5688317f841d1
		bash x-ui-pro.sh -install yes -panel 1 -ONLY_CF_IP_ALLOW no
		;;
	2) 
		echo "Удаление\n" 
		sudo su -c "bash <(wget -qO- x-ui-pro.sh https://gitflic.ru/project/bem0t/mysecurityconection/blob/raw?file=x-ui-pro.sh&commit=a5d1023459d5e818d3e7b051adb5688317f841d1) -Uninstall yes"
		;;
	3) 
		echo "Бэкап\n" 
		sudo su -c "bash <(wget -qO- https://gitflic.ru/project/bem0t/mysecurityconection/blob/raw?file=backup.sh&commit=a5d1023459d5e818d3e7b051adb5688317f841d1)"
		;;
	*) echo "Неверный вариант" ;;
esac