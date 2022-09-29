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
       77  wk-num                     pic  9(03) value 30.
       77  wk-resultado               pic  9(02).
       77  wk-resto                   pic  9(02).



       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


      *    enquanto/faca ate que
           display "Inicio"
           perform until wk-num less then 1
               divide wk-num by 4 giving wk-resultado
                                  remainder wk-resto

               if wk-resto equals zero then
                   display "[" wk-num "]"
               else
                   display " " wk-num
               end-if
               compute wk-num  = wk-num - 1
           end-perform
           display "Acabou!"








	   stop run.

