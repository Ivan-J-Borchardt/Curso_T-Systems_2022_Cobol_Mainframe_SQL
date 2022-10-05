      *Divisao de identificacao
       identification division.
       program-id. "VariaveisEstruturasDados".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 03/10/2022.
       date-compiled. 03/10/2022.


      *Divisao de configuracao do ambiente
       environment division.
       configuration section.
	    special-names. decimal-point is comma.

      *------- Declaracao de recursos externos
       input-output section.
       file-control.
       i-o-control.



      *Declaracao de variaveis
       data division.
       file section.


      *Variaveis do programa
       working-storage section.

      *    Itens de grupo e variaveis em sub-niveis...
       01  wk-numbers.
           05  wk-num1                    pic x(06).
           05  wk-num2                    pic x(05).
           05  wk-resultado               pic s9(10)v999 value zeroes.
	   05  wk-resultado2		  pic 9(05).
	   05  wk-resto			  pic 9(02).
           05  wk-data.
               10  wk-dia                 pic x(02) value "03".
               10  filler                 value "/".
               10  wk-mes                 pic x(02) value "10".
               10  filler                 value "/".
               10  wk-ano                 pic x(04) value "2022".

      *    Variaveis "avulsas"
       77  wk-num-rand                    pic 9(02).
       77  wk-cont-jogadas                pic 9(02) value 2.

      *    Variaveis logicas
       77  wk-menu                        pic x(01).
           88  wk-continuar               value "s".
           88  wk-sair                    value "n".

      *    Vetores
       01  wk-autores  occurs 10.
           05  wk-nome                    pic x(25) value spaces.
           05  wk-data-nasc.
               10  wk-dia-nasc            pic x(02).
               10  filler                 value "/".
               10  wk-mes-nasc            pic x(02).
               10  filler                 value "/".
               10  wk-ano-nasc            pic x(04).

       01  wk-ind                         pic 9(02).




       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           move "Jorge Boole"    to  wk-nome(1).
           move "20/05/1800"     to  wk-data-nasc(1).


           move "Gabriel"        to  wk-nome(2).
           move "01/01/2001"     to  wk-data-nasc(2).

           move "Mayte"          to  wk-nome(3).
           move "01/01/2002"     to  wk-data-nasc(3).

           move "Ana"            to  wk-nome(4).
           move "25/12/2001"     to  wk-data-nasc(4).

           move "Henrique"       to  wk-nome(5).
           move "23/02/2001"     to  wk-data-nasc(5).



           move 6                to  wk-ind.

           perform until wk-ind > 10 or wk-sair
               display "Informe o Nome: "
               accept wk-nome(wk-ind)

               display "Informe a Data de Nascimento: "
               accept wk-data-nasc(wk-ind)

               add 1 to wk-ind

               display "Continuar cadastro? s - sim n - nao"
               accept wk-menu

           end-perform


           perform varying wk-ind from 1 by 1
                                  until wk-ind > 10
                                  or wk-nome(wk-ind) equal spaces

               display "Nome " wk-nome(wk-ind)
           end-perform

           subtract 1 from wk-ind
           display "qtd de pessoas cadastradas " wk-ind






	   stop run.

