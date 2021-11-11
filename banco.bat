ECHO OFF

::ECHO Acessando MySQL

::cd "C:\xampp\mysql\bin"
::mysql -u root

ECHO Criando o banco de dados

C:\xampp\mysql\bin\mysql -u root < script.sql


ECHO Banco de dados criado com sucesso

PAUSE