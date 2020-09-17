#1º passo é determinar a distribuição
# as imagens em container sempre tem o seguinte formato <nomedaimagem>:<TAG>
FROM ubuntu:20.04
#from seleciona uma imagem  para servir de base

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y build-essential apt-utils php7.4 php7.4-dev \\
php7.4-cgi php7.4-cli php7.4-common php-bcmath php-fpm php7.4-xml phpdox php7.4-mbstring \\
php7.4-json php7.4-zip php7.4-pgsql php7.4-mbstring unzip composer 
RUN composer global require laravel/installer
RUN apt-get -y install nano vim

WORKDIR /home/app/blog
ENTRYPOINT ["php","artisan","serve","--host","0.0.0.0"]