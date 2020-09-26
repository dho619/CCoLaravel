# CCO-Laravel

## Projeto desenvolvido pelo UNIFEG no curso de CCO - Oitavo Período  

## Dados gerais  

### Serviços e Portas

| Serviço | Porta |
|---------|-------|
|php      |8000   |
|postgre | 54321 |  

Todos os serviços e portas, acessíveis via localhost:<porta>  

### Dados de acesso ao banco

**POSTGRES_USER:** laravel_user  
**POSTGRES_PASSWORD:** laravel_password   
**POSTGRES_DB:** laravel_db  

### Diretório de trabalho

/home/app

### Comandos Docker

`docker push dho619/laravel-container:latest` = Caso queira baixar o container

`docker run -d -it -p 8000:8000 dho619/laravel-container:latest` = Rodar diretamente o container, mapeando a porta

`docker-compose up` = Para subir os containers usando o docker-compose (arquivo encontra no repositório do github abaixo)

**https://github.com/dho619/CCoLaravel**

### Pacotes instalados em container laravel-container

- build-essential  
- php7.4  
- php7.4-dev
- php7.4-cgi  
- php7.4-cli  
- php7.4-common  
- php7.4-bcmath  
- php7.4-fpm php7.4-xml  
- phpdox  
- php7.4-mbstring  
- php7.4-json
- php7.4-zip  
- php7.4-pgsql  
- php7.4-mbstring  
- unzip  
- composer
