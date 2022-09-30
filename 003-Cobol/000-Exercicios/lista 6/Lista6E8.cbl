      *Divisao de identificacao
       identification division.
       program-id. "Lista6E8".
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

       01  wk-temperaturas.
           05  wk-temp-c                  pic 9(02)v99.
           05  wk-temp-f                  pic 9(03)v99.

       77  wk-menu                        pic x(01) value "c".
           88 wk-continuar                value "c".
           88 wk-sair                     value "s".




       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           perform until wk-sair

               display "Celsius "
               accept wk-temp-c

               compute wk-temp-f = (9 * wk-temp-c + 160)/5

               display "Fahrenheit " wk-temp-f

               display "Deseja continuar? s p/Sair c p/ Continuar "
               accept wk-menu

           end-perform



	   stop run.

