# Desafio Fractal

A API desenvolvida em Rails visa permitir a gestão de grupos de atividades espotivas

Para executar a aplicação basta realizar o clone do projeto.

Para rodar a aplicação é necessário ter o **ElasticSeach** instalado na máquina.

Não é necessário configurar banco de dados. A aplicação está usando o SQLite e após a execução do ```rails db:seed``` o banco será povoado com dados aleatórios.

```sh
$ bundle install
$ rails db:drop db:create db:migrate db:seed
```


### Incluir atletas em um determinado grupo - criar uma conta
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **POST** para o recurso "/groups/\<idDoGrupo\>/accounts" passando um JSON no corpo da requisição.

Ex:

```sh
curl -H "Content-Type: application/json" -X POST http://localhost:3000/groups/1/accounts -d '{"athlete_id":1, "group_id":1, "status":"pendente"}'
```

O atributo status contém as seguintes opções:
1. " pendente"
1. "ativo"
1. "inativo"
1. "suspenso"
1. "afastado" 

### Atualizar a conta de um atleta em um determinado grupo
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **PATCH** para o recurso "/groups/\<idDoGrupo\>/accounts/\<idDaConta\>" passando o JSON no corpo da requisição com os dados a serem atualizados.

Ex:

```sh
curl -H "Content-Type: application/json" -X PATCH http://localhost:3000/groups/1/accounts/548 -d '{"athlete_id":1, "group_id":1, "status":"suspenso"}'
```

### Excluir um atleta do grupo removendo sua conta
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **DELETE** para o recurso "/groups/\<idDoGrupo\>/accounts/\<idDaConta\>"

Ex:

```sh
curl -X DELETE http://localhost:3000/groups/1/accounts/548
```


### Listar todos os atletas
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **GET** para o recurso "/athletes"

Ex:

```sh
curl -X GET http://localhost:3000/athletes
```

### Listar um atleta
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **GET** para o recurso "/athletes/\<idDoAtleta\>"

Ex:

```sh
curl -X GET http://localhost:3000/athletes/3/
```

### Listar todas as pessoas
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **GET** para o recurso "/people"

Ex:

```sh
curl -X GET http://localhost:3000/people
```

### Listar uma pessoa
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **GET** para o recurso "/people/\<idDaPessoa\>"

Ex:

```sh
curl -X GET http://localhost:3000/people/3/
```

### Listar todos as atividades esportivas
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **GET** para o recurso "/sports"

Ex:

```sh
curl -X GET http://localhost:3000/sports
```

### Listar uma atividade esportiva
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **GET** para o recurso "/sports/\<idDaAtividade\>"

Ex:

```sh
curl -X GET http://localhost:3000/sports/3/
```

### Listar todos os grupos 
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **GET** para o recurso "/groups"

Ex:

```sh
curl -X GET http://localhost:3000/groups
```

### Listar um grupo
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **GET** para o recurso "/groups/\<idDoGrupo\>"

Ex:

```sh
curl -X GET http://localhost:3000/groups/7/
```

### Listar todos os eventos 
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **GET** para o recurso "/events"

Ex:

```sh
curl -X GET http://localhost:3000/groups
```

### Listar um evento
É necessário fazer uma requisição para http://\<endereçoDaAplicação\> com o método **GET** para o recurso "/events/\<idDoEvento\>"

Ex:

```sh
curl -X GET http://localhost:3000/events/7/
```


