crad_run_listener:
	docker-compose exec crad_php_api php /var/www/html/artisan rabbit:listen start

perm:
	sudo chgrp -R ${USER} ./
	sudo chmod -R ug+rwx ./
	sudo find ./ -type d -exec chmod 777 {} \;
	sudo find ./ -type f -exec chmod 666 {} \;
#	sudo chgrp -R ${USER} ./src
#	sudo chmod -R ug+rw ./src
	sudo find ../app -type d -exec chmod 775 {} \;
	sudo find ../app -type f -exec chmod 664 {} \;
	sudo chown -R sysuser:www-data ../app
	sudo chmod -R 775 ../app
	#sudo find ../app/storage -type d -exec chmod 777 {} \;
	#sudo find ../app/storage -type f -exec chmod 666 {} \;
#	if [ -d "node_modules" ]; then sudo chown ${USER}:${USER} node_modules -R; fi
#	if [ -d "public/build" ]; then sudo chown ${USER}:${USER} public/build -R; fi