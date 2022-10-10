      *Divisao de identificacao
       identification division.
       program-id. "Lista7E2".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 06/10/2022.
       date-compiled. 06/10/2022.


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
       01  wk-pessoas occurs 9.
           05  wk-nome                      pic x(35) values spaces.
           05  wk-idade                     pic 9(03).




       01  wk-indices.
           05  wk-ind                       pic 9(02).

       77  wk-menu                          pic x(01).
           88 wk-sair                       value "s".



       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           perform varying wk-ind from 1 by 1 until wk-ind > 9
                                                 or wk-sair
              display "Nome "
              accept wk-nome(wk-ind)

              display "Idade "
              accept wk-idade(wk-ind)


              display "Continuar (c) ou Sair (s)"
              accept wk-menu

           end-perform


           perform varying wk-ind from 1 by 1 until wk-ind > 9
                                         or wk-nome(wk-ind)  =  spaces

              if (wk-idade(wk-ind) < 18) then
                  display wk-nome(wk-ind)  " - "   wk-idade(wk-ind)
              end-if

           end-perform





	   stop run.


