      *Divisao de identificacao
       identification division.
       program-id. "Lista6E4".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 29/09/2022.
       date-compiled. 29/09/2022.


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

      *
       78  wk-tam-vet                      value 20.
       01  wk-numeros-rand occurs 20.
           05 wk-num                       pic 9(02).



       77  wk-ind                          pic 9(03).


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           perform a-inicializa.
           perform b-processa.
           perform z-finaliza.

	   stop run.


      ******************************************************************
      *   Procedimento de Incializaçao
      ******************************************************************
       a-inicializa section.
       a-inicializa-a.
           continue.
           .
       a-inicializa-z.
           exit.


      ******************************************************************
      *   Procedimento Principal
      ******************************************************************
       b-processa section.
       b-processa-a.

      *    Gerando sequencia Fibonacci
           move 0          to      wk-num(1)
           move 1          to      wk-num(2)
           perform varying wk-ind from 3 by 1 until wk-ind > wk-tam-vet
               compute wk-num(wk-ind)= wk-num(wk-ind - 1)+
                                       wk-num(wk-ind - 2)
           end-perform

           .
       b-processa-z.
           exit.

      ******************************************************************
      *   Procedimento de Finaliazaçao
      ******************************************************************
       z-finaliza section.
       z-finaliza-a.

      *    Exibindo Relatorio
           display "------------- Relatorio ----------------"

           perform varying wk-ind from 1 by 1 until wk-ind > wk-tam-vet
               display wk-num(wk-ind)
           end-perform

           .
       z-finaliza-z.
           exit.



