sudo apt update
sudo apt install apache2

#set up shit in each user's directory
mkdir  /var/www/soldier
touch  /var/www/soldier/index.php
touch  /var/www/soldier/records.html
touch  /var/www/soldier/permdenied.html
touch  /etc/apache2/sites-available/soldier.conf
#add content to each user's directory
echo "Permission denied" >> /var/www/soldier/permdenied.html
echo "Records" >> touch  /var/www/soldier/records.html

#make virtual hosts file
echo """<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    ServerName soldier
    ServerAlias www.soldier.io
    DocumentRoot /var/www/soldier
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
""" >> etc/apache2/sites-available/soldier.conf
#Make directory in apache2.conf
echo """
<Directory /var/www/soldier>
	Options Indexes FollowSymLinks
	AllowOverride All
	Require all granted
</Directory>
""" >> /etc/apache2/apache2.conf
#htaccess config
sed -i 's/chiefsuseragent/'"$1 "'/' .htaccess
mv .htaccess /var/www/soldier/.htaccess
# allowoverride in apache2.con by adding new directory

# make virtual host
a2ensite soldier
a2enmod rewrite
a2enmod userdir