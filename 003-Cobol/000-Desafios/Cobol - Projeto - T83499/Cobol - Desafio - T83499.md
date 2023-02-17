1. Crie um Banco de Dados chamado BTD
2. Crie as tabelas T83RTRAB, T83RLBES de acordo com a documentação em anexo e a tabela T83RTVLK baseado no layout abaixo: 
~~~
   01  T83RTVLK.
       10 TVLK-FUNKTION-ID     PIC X(20). -->(PK)
       10 TVLK-FUNKVAR-ID      PIC X(4).  -->(PK)
       10 TVLK-BEZ.
          49 TVLK-BEZ-LEN      PIC S9(4) USAGE COMP. 
          49 TVLK-BEZ-TEXT     PIC X(80).
~~~

3. Crie o programa T83499 de acordo com a descrição em anexo.

#### **Algumas observações adicionais**

- Ao iniciar o programa deverá limpar o conteúdo da tabela T83RTRAB. 

- O Arquivo TGB64 pode conter mais de um registro de dados para a mesma chave. Se houver mais de um registro para a mesma chave, somar os valores contidos em ME 'Menge'. 

- Se o registro lido em TGB64 já existe na tabela T83RLBES, basta atualizar os dados de acordo com a regra descrita no documento T83499.doc. 




#### **Vorlaufkarte**
- O programa lê o arquivo de parâmetros TGB62. Este arquivo pode ter um ou mais registros (linhas). 
Para cada linha do arquivo TGB62 deve haver um registro de parametros na tabela T83RTVLK.

**Relacionamento entre o arquivo TGB62 e a tabela T83RTVLK**
~~~ 
   TVLK-FUNKTION-ID = TGB62-KENN(3:6)
   TVLK-FUNKVAR-ID = TGB62-VAR
~~~

- Os parâmetros em sí ficarão armazenados no campo TVLK-BEZ-TEXT  

- Nesta versão o programa não terá parâmetros, mas a Vorlaufkarte precisa ser lida e consistida, caso algum campo tenha algum valor diferente do permitido, o programa deverá ser abortado e uma mensagem deve ser protocolada no arquivo TGB63.

- Se os campos da Vorlaufkarte estiverem todos consistentes, então o conteúdo da Vorlaufkarte deverá ser protocolado no arquivo TGB63. Também o contéudo do campo TVLK-BEZ-TEXT deve ser protocolado. Veja um exemplo de protocolo no arquivo SYS030.txt.  

#### **Protocolo**

- O protocolo deverá conter em seu cabeçalo o nome do Programa, com versão, Data e Hora de início e demais dados de identificação (veja exemplo no arquivo SYS030.txt). 

- Todas as mensagens de erro devem ser protocoladas. 

- Todas as operações no banco de dados devem ser contabilizadas e seus resultados devem ser Protocolados. 

- Ao final do Programa deve ser impresso a data e hora de termino. 


#### **Padronização do Código**

- Não usar $set sourceformat"free"
- Nomes de variáveis precisam ser em alemão
- Variáveis temporárias devem ter o prefixo "ZW-" (Zwischen-)
- Todos os algoritmos/procedimentos que são necessários em mais de um lugar do programa devem ter sua própria section (Deve-se evitar repetição de código)

#### **Sections**

- **Section A**
   - A11 : Inicialização de variáveis 
   - A12 : Ler, testar e Processar VOrlaufkarte
   - A13 : Abertura de arquivos em Geral 

- **Section B**
   - Leitura dos arquivos sequenciais. 

- **Section F**
   - Processar os dados lidos dos arquivos de entrada. 

- **Section R**
   - Acesso ao Banco de Dados 
   - R0001 - Declarar, Abrir, Ler, fechar Cursor
   - R0002 - Delete
   - R0003 - Select 
   - R0004 - Insert 
   - R0005 - Update


- **Section S0**
   - Controle Principal do programa (Equivale ao B-Processa)
   - Labels e suas funções: 
      - S0A - Perform A1 (Inicialização do Programa)
      - S0B - Perform B1 (Leitura de Arquivo e Balance Line)
      - S0F - Perform F0 (mover dados lidos dos arquivos para variáveis temporárias)
      - S0Z - Perform Z1 (Finalização do Programa)

- **Section U**
   - Sections de propósito Geral (podem ser usadas para cálculos ou criar alguma lógica que será usada em diversos pontos do programa)

- **Section Y**
   - Escrita dos arquivos de saída, cada arquivo de saída deve ter uma section Y000n (Y0001, Y0002, etc)

- **Section Z**
   - Finalização do Programa