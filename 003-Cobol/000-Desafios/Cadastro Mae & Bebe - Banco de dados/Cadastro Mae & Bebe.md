# Desafio: Sistema de cadastro com Banco de dados SQL 

Crie um sistema para efetuar e gerenciar o cadastro de Maes, Bebes e Partos. Tome por base o MER em anexo. 

## Da arquitetura

- Crie 1 Programa para cada tabela contendo as funções básicas (Inserir, Alterar, Deletar, Consultar, ListarTodos); 
- Crie 1 Programa contendo o menu geral; 
- Crie 1 Programa para geração de relatórios, este programa deverá dar a opção de gerar os seguintes relatórios em arquivos sequenciais no formato csv:  

1. Relatório de todos os partos que ocorreram em um determinado ano(o usuário pode escolher o ano). Esse Relatorio deve trazer os dados do Parto, dados do Bebe e dados da Mae. 

2. Relatório de partos de um mae especifica, identificada pelo seu CPF. Esse Relatorio deve trazer os dados do Parto, dados do Bebe e dados da Mae. 

- Crie um programa que leia um arquivo com os dados da Mae. O programa deverá verificar se a mae já está cadastrada. 
    - Caso não haja cadastro para a mae: Inserir os dados da mae no banco de dados; 
    - Caso a mae já esteja cadastrada, se necessário, atualizar os dados do cadastro com os dados provenientes do arquivo;

~~~
Layout do Arquivo: 
01 t345a. 
   05 wk-cpf-mae               pic x(14). 
   05 wk-nome-mae              pic x(35). 
   05 wk-cod-end               pic 9(05). 
   05 wk-data-nasc-mae         pic x(10). 

~~~

- O programa deverá protocolar cada ação com cada registro de dados em um arquivo de saída. Ao final do protocolo deverá ser gerado um resumo com a sumarização das ações (Quantida de registros lidos, quantidade de registros inseridos no Banco e Quantidade de Registros alterados no Banco).  
- Caso o Programa ABENDE por causa de algum erro, protocolar a mensagem de erro. 

~~~
Exemplo de protocolo: 
-----------------------------------------------------------------------------------------
Protocolo Programa Load Mae  -  Data: 27.01.2023  -  Hora Inicio: 14:23:03  
-----------------------------------------------------------------------------------------
CPF: 000.000.000-01 - Dados Alterados no Banco: nome, Cod de endereco
CPF: 000.000.000-03 - Dados Alterados no Banco: Data Nasc.
CPF: 000.000.000-06 - Dados Inseridos no Banco
...
CPF: 000.000.000-09 - Dados Inseridos no Banco 
CPF: 000.000.000-12 - ados Alterados no Banco: nome, Data Nasc., Cod de endereco
-----------------------------------------------------------------------------------------
Qtd. Registros Lidos       : 56
Qtd. Registros Inseridos   : 15
Qtd. Registros Alterados   : 20
Qtd. Registros Inalterados : 21 

Programa Finalizado com Sucesso 

~~~



arq.csv  
    Ivan JB;000.000.000-12;12.04.2000;890; 