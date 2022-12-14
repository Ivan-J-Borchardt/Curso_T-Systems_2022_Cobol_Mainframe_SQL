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

      *    Subscritor
       01  wk-ind                         pic 9(02).

      *    Indexador
       01  wk-estados   pic x(20) occurs 27 indexed by wk-index.


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


      *    Usando Subscritor para acessar a posicao dentro do vetor
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


      *    Usando Indice para acessar a posicao dentro do vetor

           set wk-index to 1.

           move "Santa Catarina2334"     to   wk-estados(wk-index)
           set wk-index up by 1
           move "Parana"     to   wk-estados(wk-index)

           display "wk-estados(1) " wk-estados(1)

           perform varying wk-index from 1 by 1 until wk-index > 27
              display "wk-estados " wk-estados(wk-index)
           end-perform

      *    Incrementando e decrementando indices
           set wk-index up by 1

           set wk-index down by 1

      *    dando display do conteudo de wk-ind
           set wk-ind   to  wk-index
           display "wk-index " wk-ind



      *    apesar do vetor possuir um indice declarado, eh possivel usar subscritor

           move 1  to wk-ind
           display "wk-estados(wk-ind) " wk-estados(wk-ind)

      *    Search
           set  wk-index to 1
           search wk-estados varying wk-index
              at end
                 display "estado nao cadastrado"

              when wk-estados(wk-index) = "Santa Catarina"
                 display "Estado Localizado!"

              when wk-estados(wk-index) = "Parana"
                 display "Estado2  Localizado!"

              when wk-estados(wk-index) = "Sao Paulo"
                 display "Estado3  Localizado!"
           end-search


	   stop run.

