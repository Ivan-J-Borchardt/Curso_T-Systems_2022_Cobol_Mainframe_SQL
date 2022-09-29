      *Divisao de identificacao
       identification division.
       program-id. "Lista5E1".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 28/09/2022.
       date-compiled. 28/09/2022.


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

      *Variavel alfanumerica de 25 caracteres
       77  wk-num                     pic s9(03) value 1.
       77  wk-limite                  pic s9(03).



       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           display "Limite: "
           accept wk-limite

      *    enquanto/faca ate que
           display "Inicio"
           perform until wk-num greater then wk-limite
               display " " wk-num
               compute wk-num  = wk-num + 1
           end-perform
           display "Acabou!"

      *    para
           display "Inicio"
           perform varying wk-num from 1 by 1
                     until wk-num greater than wk-limite
               display " " wk-num
           end-perform
           display "Acabou!"

      *    repita
           move 1 to  wk-num
           display "Inicio"
           perform wk-limite times
               display " " wk-num
               compute wk-num  = wk-num + 1
           end-perform
           display "Acabou!"


	   stop run.

