# Avaliação WebDev-Alfa 2019 Node JS - Gus Antoniassi

Avaliação da disciplina de **Desenvolvimento Web com Node JS**.

## Instalação (com docker-compose)
Faça o clone do projeto ou baixe o código fonte, depois rode os comandos a seguir na pasta do projeto

```
cp .env.dist .env
docker-compose build
docker-compose up -d
```

## Acesso
```localhost:3001```

## Rotas

|Método|URL|Descrição|
|-|-|-|
POST|http://localhost:3001/api/usuarios|Cadastro de usuários|
POST|http://localhost:3001/api/usuarios/login|Login de usuários|
GET|http://localhost:3001/api/usuarios/1|Consulta de usuário por ID|
PUT|http://localhost:3001/api/usuarios/1|Edição de usuários|
POST|http://localhost:3001/api/tarefas|Cadastro de tarefas|
GET|http://localhost:3001/api/tarefas|Listagem de tarefas|
GET|http://localhost:3001/api/tarefas/1|Consulta de tarefa por ID|
PUT|http://localhost:3001/api/tarefas/1|Edição de tarefas|
DEL|http://localhost:3001/api/tarefas/1|Exclusão de tarefas|
PUT|http://localhost:3001/api/tarefas/1/concluida|Marcar tarefa como Concluída|
DEL|http://localhost:3001/api/tarefas/1/concluida|Desmarcar tarefa como Concluída|

## Collection
[Link](https://github.com/douglasjunior/WebDevAlfa-2019-Node/blob/master/Avalia%C3%A7%C3%A3o/Gerenciamento%20de%20Tarefas.postman_collection.json)