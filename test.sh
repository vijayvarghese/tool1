#!/bin/bash

alias deploy_prep='mv /var/www/html/index.html ~/offload/maintenance/index.html && mv /var/www/html/assets ~/offload/maintenance/assets'
alias deploy='mv ~/offload/main/index.html /var/www/html/index.html && mv ~/offload/main/assets /var/www/html/assets'
alias maintenance_prep='mv /var/www/html/index.html ~/offload/main/index.html && mv /var/www/html/assets ~/offload/main/assets'
alias maintenance='mv ~/offload/maintenance/index.html /var/www/html/index.html && ~/offload/maintenance/assets /var/www/html/assets'

var=$1
mode1="deploy"
mode2="maintenance"
echo $var
if [[ "$1" = "$mode1" ]]; then
	echo "Deployment underway..."
	deploy_prep
	echo "Deployment prep done..."
	deploy
	echo "Deployed !"
elif [[ "$1" = "$mode2" ]]; then
	echo "maintenance underway..."
	maintenance_prep
	echo "maintenance prep done..."
	maintenance
	echo "maintenance mode active"
else
	echo "Invalid parameter..."
fi
