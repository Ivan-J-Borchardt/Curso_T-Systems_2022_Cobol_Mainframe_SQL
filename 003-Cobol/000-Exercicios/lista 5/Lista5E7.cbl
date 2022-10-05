      *Divisao de identificacao
       identification division.
       program-id. "Lista5E7".
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

      *Variavel alfanumerica de 25 caracteres
       77  wk-num                     pic  9(03).
       77  wk-resultado               pic  9(05) value 0.



       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.



           perform varying wk-num from 6 by 2 until wk-num > 100

      *        compute wk-resultado = wk-resultado + wk-num
               add  wk-num  to  wk-resultado

           end-perform

           display "wk-resultado " wk-resultado








	   stop run.

