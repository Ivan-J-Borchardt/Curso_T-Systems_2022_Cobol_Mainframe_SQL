      *Divisao de identificacao
       identification division.
       program-id. "Delay".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 20/09/2022.
       date-compiled. 20/09/2022.


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

       77  wk-hora-inicio-delay                   pic 9(08).
       77  wk-hora-atual                          pic 9(08).
       77  wk-tempo-delta                         pic 9(08).
       77  wk-tempo-delay                         pic 9(08).


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           accept wk-hora-inicio-delay from time
           display "A:  " wk-hora-inicio-delay

           perform u-delay

           accept wk-hora-inicio-delay from time
           display "B:  " wk-hora-inicio-delay

           stop run.

      ******************************************************************
      *  Delay - serve para dar um pause de n segundos no programa
      ******************************************************************
       U-delay section.

      *    wk-tempo-delay = 100 -> 1 segundo
           move 1000 to wk-tempo-delay
           move 0    to wk-tempo-delta
           accept wk-hora-inicio-delay from time
           perform until wk-tempo-delta >= wk-tempo-delay
              accept wk-hora-atual from time
              compute wk-tempo-delta = wk-hora-atual -
              wk-hora-inicio-delay
           end-perform.
      *  Falta fazer tratamento para a virada do dia

       U-delay-exit.
           exit.


