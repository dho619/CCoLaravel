# Primeiro passo é definir a distribuição base da imagem
#nesse caso é ubuntu 20.04
FROM ubuntu:20.04
# as imagens do container segue a sintaxe: <nomedaimagem>:<TAG>

#O RUN é para rodar um ou mais comandos depois que subir o container
#Nesse caso ele vai ser rodado para instalar as dependências necessárias
RUN apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata apt-utils
RUN apt-get install -y build-essential php7.4 php7.4-dev \\
php7.4-cgi php7.4-cli php7.4-common php7.4-bcmath php7.4-fpm php7.4-xml phpdox php7.4-mbstring php7.4-json \\
php7.4-zip php7.4-pgsql php7.4-mbstring unzip composer && mkdir -p /home/app
#Workdir define em que diretório os comandos como RUN, CMD, COPY, ENTRYPOINT irão trabalhar
WORKDIR /home/app
RUN composer global require laravel/installer && composer -vvv create-project --prefer-dist laravel/laravel blog
RUN apt-get -y install nano vim

WORKDIR /home/app/blog
#Entrypoint é o comando que faz o docker continuar executando, 
#nesse caso é o de subir o laravel.
ENTRYPOINT ["php","artisan","serve","--host","0.0.0.0"]