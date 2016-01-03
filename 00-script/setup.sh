#!/bin/bash

echo "==> 0 - add host info"
echo "10.0.0.10  mywordpress"  | sudo tee -a /etc/hosts



echo "==> 1 - add PPA of php7 (community)"
sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php-7.0



echo "==> 2 - add PPA of nginx (official)"
echo "deb http://nginx.org/packages/ubuntu/ trusty nginx"     | \
  sudo tee  /etc/apt/sources.list.d/nginx.list
echo "deb-src http://nginx.org/packages/ubuntu/ trusty nginx" | \
  sudo tee -a /etc/apt/sources.list.d/nginx.list
wget -O- http://nginx.org/keys/nginx_signing.key | sudo apt-key add -



echo "==> 3 - download/update the package lists"
sudo apt-get update



echo "==> 4 - install php-fpm, nginx, and php-mysql"
sudo apt-get install -y php7.0-fpm php7.0-mysql nginx



echo "==> 5 - download and extract wordpress"
cd /tmp
wget https://tw.wordpress.org/wordpress-4.4-zh_TW.tar.gz
sudo tar zxvf wordpress-4.4-zh_TW.tar.gz -C /usr/share
sudo chown -R www-data:www-data /usr/share/wordpress



echo "==> 6 - install site conf file for wordpress"
cd /etc/nginx/conf.d
sudo mv default.conf default.conf.bak
sudo cp /vagrant/nginx-wordpress.conf .



echo "==> 7 - change php-fpm unix socket permission to the same as nginx"
sudo sed -i -e 's/^listen.owner\s*=.*/listen.owner=nginx/' /etc/php/7.0/fpm/pool.d/www.conf
sudo sed -i -e 's/^listen.group\s*=.*/listen.group=nginx/' /etc/php/7.0/fpm/pool.d/www.conf
sudo service php7.0-fpm restart



echo "==> 8 - install mysql"
echo 'mysql-server mysql-server/root_password password secretsecret' | sudo debconf-set-selections
echo 'mysql-server mysql-server/root_password_again password secretsecret' | sudo debconf-set-selections
sudo apt-get install -y mysql-server
sudo apt-get install -y mysql-client



echo "==> 9 - create initial wordpress db"
mysql -u root --password=secretsecret -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -u root --password=secretsecret -e \
  'GRANT ALL PRIVILEGES ON wordpress.* TO "wordpressuser"@"localhost" IDENTIFIED BY "wordpresspassword"; '
mysql -u root --password=secretsecret -e "FLUSH PRIVILEGES;"



echo "==> 10 - set wordpress config"
sudo cp /vagrant/wp-config.php /usr/share/wordpress
sudo chown www-data:www-data /usr/share/wordpress/wp-config.php



echo "==> 11 - restart nginx"
sudo service nginx restart



echo "==> 12 - automate the '5-minute install' process"
curl --data "weblog_title=ANSIBLE_TEST&user_name=admin&admin_email=foo@gmail.com&blog_public=true&admin_password=admin&admin_password2=admin"  'http://mywordpress/wp-admin/install.php?step=2'
