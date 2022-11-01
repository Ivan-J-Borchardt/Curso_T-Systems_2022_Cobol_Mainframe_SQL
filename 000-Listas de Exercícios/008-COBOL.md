# Lógica de Programação - Cobol
## Lista de Exercícios 8 
### Objetivos
- Compreender na prática a aplicabilidade e funcionamento de sub-programas. 
- Reforçar a fixação dos conteúdos anteriores. 
- Promover a construção de um ferramental lógico e algorítmico para posterior aplicação em soluções de maior complexidade.
- Desenvolver o racíocinio lógico e a habilidade analítica.
#### Palavras Chave  
- Sub-Programas, Módulos, Telas
---
### Instruções Adicionais 
- Resolva os exercícios propostos usando Cobol.

---
### Exercícios 
1.	Crie um sistema de dois programas conforme segue: 

**Programa 1:** Deve apresentar uma tela de autenticação de senha

**Tela:** 

~~~
**************************************
**************************************
**  User ID :                       **                                                     **                                  **
**  Password:                       **                                                   **                                  **
**************************************
**************************************
~~~

-	Ocultar a senha na digitação; 
-	Se o usuário e senha estiverem certos permitir acesso ao programa, do contrário encerrar o processamento; 
-	Permitir 3 tentativas, caso o acesso tenha sido negado, exibir a mensagem correspondente:  “Usuário não cadastrado” ou  “Senha incorreta”
-	Caso o usuário digite corretamente o usuário e a senha, permitir que o programa siga com o  processamento principal: Display “Usuário e Senha corretos”. 


**Programa 2:** Fará a autenticação do usuário e senha. 
	
-	O usuário e senha estarão compilados no código do programa. 
-	Criar duas flags usuário_correto e senha_correta (usar nível 88).   

~~~
working-storage section.
       01 wk-tela-aut-senha.
          05 wk-user-id                            pic x(15).
             88 wk-user-ok                         value "F0FP898".
             
          05 wk-password                           pic x(20).
             88 wk-senha-ok                        value "Trocar123".
~~~

- Estrutura de dados da Linkage Section
~~~
linkage section.

       01 lk-tela-aut-senha.
          05 lk-user-id                            pic x(15).
          05 lk-password                           pic x(20).
          05 lk-status-aut                         pic 9(01).
~~~

~~~
- lk-status-aut = 0, se Senha e Usuário OK
                  1, se Usuário Ok, mas senha Ñ-Ok 
                  2, se Usuário Ñ-Ok

~~~

---

2.	Crie um sistema de dois programas conforme segue: 

**Programa 1:**
- Solicitar ao usuário em que ano estamos;
- Solicitar ao usuário em que mês estamos;
- Solicitar ao usuário em que dia estamos;
- Chamar o programa 2 passando o dia, mês e ano atuais como parâmetros;
- Apresentar as mensagens 1, 2 e 3 a partir das informações retornadas do programa 2 
  	    
               
**Tela:** 
~~~
=======================================[X]==
=                                          =
=  Ano [    ]      Mes [  ]     Dia [   ]  =
=                                          =
=  < mensagem 1 >                          =
=                                          = 
=  < mensagem 2 >                          = 
=                                          =
=  < mensagem 3 >                          =
============================================
~~~

**Variáveis de tela:** 
~~~
05 Fim_programa  pic x(1)  value “x”.
     88 fechar_programa        value “X”.

05 Ano                   pic 9(4).
05 Mes                   pic 9(2).
05 Dia                    pic 9(2).

05 Mensagem1      pic x(40).
05 Mensagem2      pic x(40).
05 Mensagem3      pic x(40).
~~~

**Mensagem 1:** 

O ano <ano> eh bissexto.
ou
O ano <ano> nao eh bissexto e eh par.
ou
O ano <ano> nao eh bissexto e eh impar.

                                       
**Mensagem 2:** 

O mes de <mes> tem <qtddias> dias.

       Exemplo: 
             O mês de dezembro tem 31 dias.

**Mensagem 3:** 

Faltam <qtddiasfimano> para o reveillon <ano>.



**Programa 2:** 
-	Descobrir se o ano é bissexto; Se o ano é par ou impar
-	Descobrir quantos dias tem o mês atual; 
-	Calcular quantos dias faltam até 31 de dezembro; 
-	Retornar as informações acima para o programa 1.
