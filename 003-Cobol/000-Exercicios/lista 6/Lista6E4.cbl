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
       77  wk-num                          pic 9(02).
       77  wk-num-m1                       pic 9(02) value 1.
       77  wk-num-m2                       pic 9(02) value 0.




       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           display wk-num-m2
           display wk-num-m1

           perform 8 times
               compute wk-num = wk-num-m2  + wk-num-m1
               display wk-num

               move  wk-num-m1  to  wk-num-m2
               move  wk-num     to  wk-num-m1

           end-perform

	   stop run.





