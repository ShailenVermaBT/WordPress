
#!/bin/bash
systemctl start mariadb.service
systemctl start apache2.service
systemctl start php-fpm.service