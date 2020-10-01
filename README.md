# CCOLaravel

## Projeto desenvolvido em aula, no curso de Ciência da computação - 8º Período, na matéria de Novos Paradigmas De Computação

## Dados gerais  

### Serviços e Portas

| Serviço | Porta Container | Porta Local |
|---------|-----------------|-------------|
|php      |             8000|         8000|
|postgres |             5432|        54321|

Pode acessar os serviços do container através de localhost:<porta>  

### Dados de acesso ao banco

**POSTGRES_USER:** laravel_user  
**POSTGRES_PASSWORD:** laravel_password   
**POSTGRES_DB:** laravel_db  

### Diretório de trabalho dentro do container laravel

/home/app

## Formas de rodar:

### Através do dockerfile

Baixa esse repositório ou pelo menos o dockerfile(laravel-container/Dockerfile)
Para fazer o build do container:

    `docker build -t nomeContainer:versao caminhoDockerFile`

e depois para executá-lo mapeando a porta que o laravel usa: 

    `docker run -d -it -p 8000:8000 dho619/laravel-container:latest`

### Através do dockerhub

Trazer o container do dockerhub:

    `docker pull dho619/laravel-container:latest`

e depois para executá-lo mapeando a porta que o laravel usa:

    `docker run -d -it -p 8000:8000 dho619/laravel-container:latest` 

### Rodar o docker-compose

`docker-compose up` = Vai subir os containers de acordo com o descrito no arquivo docker-compose. No arquivo em questão, está para subir o container laravel e um container com postgres. **Deve estar no diretório que contém o arquivo**


### Pacotes instalados no container laravel

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
