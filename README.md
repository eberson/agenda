# Agenda

Projeto destinado ao estudo de C# com MVC na escola Etec Sylvio de Mattos Carvalho

## Instalando as Bibliotecas

Uma vez que estamos, na escola, utilizando a DotNet Core 2.1, devemos indicar a versão das bibliotecas:

```bash 
dotnet add package Microsoft.EntityFrameworkCore -v 2.1.14
dotnet add package Microsoft.EntityFrameworkCore.Design -v 2.1.14
dotnet add package Pomelo.EntityFrameworkCore.MySql --version 2.1.4
dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design -v 2.1.10
dotnet add package Microsoft.VisualStudio.Web.CodeGenerators.Mvc -v 2.1.10
```

Caso estejam utilizando a última versão do DotNet Core basta utilizar os comandos sem informar a versão (para pegar a mais recente):

```bash 
dotnet add package Microsoft.EntityFrameworkCore
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Pomelo.EntityFrameworkCore.MySql
dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design
dotnet add package Microsoft.VisualStudio.Web.CodeGenerators.Mvc
```

## Criação dos Modelos e Classes de Conexão

Execute o comando:

```bash
dotnet tool install --global dotnet-ef --version 2.1.14

dotnet ef dbcontext scaffold "server=localhost;port=3306;database=agenda;user=digio;password=d1gio01" Pomelo.EntityFrameworkCore.MySql -o Models -f -c AgendaContext
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

### Aula 22/11

Abrir o GIT Bash e executar os seguintes comandos

```bash
# vamos nos posicionar no desktop para facilitar a copia do projeto caso necessário
cd ~/Desktop

# fazemos download do projeto do github
git clone https://github.com/eberson/agenda.git

# entramos na pasta do projeo que acabamos de fazer download
cd agenda

# restauramos o projeto (fazemos download do que for necessario e deixamos o projeto pronto para ser executado)
dotnet restore

# instalamos os certificados de desenvolvimento
dotnet dev-certs https --trust
```

Depois disso vamos iniciar o MySQL pelo Xampp Control Pannel

Com o banco de dados inciado, vamos executar o arquivo banco.bat para criar a base de dados e a tabela que usaremos.

Depois disso, execute o comando:

```bash
dotnet tool install --local dotnet-aspnet-codegenerator --version 2.1.10
```

Com esse comando, iremos instalar o gerador de código para ASPNET Core. Depois disso, execute:

```bash
export PATH=$HOME/.dotnet/tools:$PATH
```

Agora estamos prontos para começar a gerar código no nosso projeto. 

```bash
dotnet-aspnet-codegenerator controller -name ContatoController -m Contato -dc AgendaContext --relativeFolderPath Controllers --useDefaultLayout --referenceScriptLibraries
```

Com esse comando criaremos o controller para manipular a tabela de contato e todas as visualizações necessárias para que o projeto funciona.

Feito isto, basta executar o comando:

```bash
dotnet watch run
```

E verificar no endereço: `https://localhost:5001/Contato` o resultado do trabalho que acabamos de fazer.

Depois disso, tente fazer alterações nas páginas para que fiquem mais adequadas às suas expectativas.

Salvem o projeto para que continuemos na próxima aula.

Tenham um bom dia!