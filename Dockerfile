FROM ubuntu

# Update the repository sources list
RUN apt-get update

# Install and run apache
RUN apt-get install -y apache2 && apt-get clean


RUN apt-get update && apt-get install -y python3 pip
RUN pip install flask

# from https://www.digitalocean.com/community/tutorials/how-to-use-apache-http-server-as-reverse-proxy-using-mod_proxy-extension-ubuntu-20-04
RUN a2enmod proxy proxy_http proxy_balancer lbmethod_byrequests

# for debugging
RUN apt-get install -y curl

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY index.html /var/www/html/index.html
COPY flask_app.py flask_app.py
COPY wrapper wrapper

EXPOSE 80

CMD ./wrapper
