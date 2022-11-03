# msql-someDataBase
Há varios bancos no diretorios.

Para executar o banco recomendo a utilização do docker

 ⚠ Atenção ⚠ 
 Caso não tiver o [Docker](https://docs.docker.com/engine/install/) e [Compose]( https://docs.docker.com/compose/install/ ) instalado ! 

 <br/>
 
```bash
docker run -p 3306:3306 --name ph_mysql -e MYSQL_ROOT_PASSWORD=sua_senha -d mysql:5.7
```

```bash
docker container start ph_mysql
```
