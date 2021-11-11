# Agenda

Projeto destinado ao estudo de C# com MVC na escola Etec Sylvio de Mattos Carvalho

## Instalando as Bibliotecas

Uma vez que estamos, na escola, utilizando a DotNet Core 2.1, devemos indicar a versão das bibliotecas:

```bash 
dotnet add package Microsoft.EntityFrameworkCore -v 2.1.14
dotnet add package Microsoft.EntityFrameworkCore.Design -v 2.1.14
dotnet add package Mysql.Data.EntityFrameworkCore -v 6.10.9
```

Caso estejam utilizando a última versão do DotNet Core basta utilizar os comandos sem informar a versão (para pegar a mais recente):

```bash 
dotnet add package Microsoft.EntityFrameworkCore
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Mysql.Data.EntityFrameworkCore
```

## Criação dos Modelos e Classes de Conexão

Execute o comando:

```bash
dotnet ef dbcontext scaffold "Server=localhost;DataBase=agenda;Uid=root" MySql.Data.EntityFrameworkCore -o Models -f -c AgendaDbContext
```

Onde :

```
dotnet ef dbcontext - comando
"Server=localhost;DataBase=agenda;Uid=root" - a string de conexão do banco de dados usado
MySql.Data.EntityFrameworkCore -  o provedor do banco de dados
-o Models - a pasta de sáida das classes geradas
-f - sobrescreve um código anteriormente gerado
-c DemoDbContext - o nome do DbContext usado na aplicação
```