FROM php:7.2-apache
WORKDIR /home/ec2-user/ 
RUN echo '<? phpinfo(); ?>' > /var/www/html/phpinfo.php 
RUN cp /var/www/html/phpinfo.php /var/www/html/index.php 
RUN chmod -R 775 /var/www/html 
RUN chown -R www-data:www-data /var/www/html/
