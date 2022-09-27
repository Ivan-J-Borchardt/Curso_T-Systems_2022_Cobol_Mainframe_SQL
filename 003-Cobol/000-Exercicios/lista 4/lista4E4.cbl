      *Divisao de identificacao
       identification division.
       program-id. "Lista4E3".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 27/09/2022.
       date-compiled. 27/09/2022.


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
       77  wk-num                           pic 9(02).
       77  wk-resultado                     pic 9(02).
       77  wk-resto                         pic 9(02).




       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           display "Numero   : "
           accept wk-num

           divide wk-num by 2  giving wk-resultado remainder wk-resto

           if wk-resto > 0 then
               display "O Numero eh impar"
           else
               display "O Numero eh par"
           end-if




	   stop run.

