      *Divisao de identificacao
       identification division.
       program-id. "Lista6E1".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 30/09/2022.
       date-compiled. 30/09/2022.


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

       01  wk-numbers.
           05  wk-num                     pic 9(05).
           05  wk-resultado               pic 9(10).
	   05  wk-resto			  pic 9(02).


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


      *    Numeros randomicos
           perform varying wk-num from 1 by 1 until wk-num > 100

      *        Descobrindo os multiplos de 3
               divide  wk-num  by 3
                       giving wk-resultado
                       remainder wk-resto

               if wk-resto = 0 then
                   display "[" wk-num "] (* 3)"
               end-if

      *        Descobrindo os multiplos de 5
               divide  wk-num  by 5
                       giving wk-resultado
                       remainder wk-resto

               if wk-resto = 0 then
                   display "[" wk-num "] (* 5)"
               end-if


           end-perform



	   stop run.

