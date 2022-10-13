      *Divisao de identificacao
       identification division.
       program-id. "TrabalhandoComStrings".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 13/10/2022.
       date-compiled. 13/10/2022.


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

       77 wk-nome                    pic x(15) value "JoAo da Silva".

       77 wk-char                    pic x(1).
       77 wk-ascii-value             pic 9(18) value 68.

       77 wk-menu                    pic x(1).

       01 wk-data.
          05  wk-dia                 pic x(02) value "05".
          05  filler                 value ".".
          05  wk-mes                 pic x(02) value "12".
          05  filler                 value ".".
          05  wk-ano                 pic x(04) value "2022".

       77 wk-data2                   pic x(10) value "05.12.2022".


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           accept wk-menu

           move function upper-case(wk-menu)  to wk-menu

           if wk-menu = "S" then
               display "Sair"
           end-if


           if wk-nome = "Joao"  then
               display "Entrou no If"
           end-if

           move function upper-case(wk-nome) to wk-nome
           display wk-nome

           move function lower-case(wk-nome) to wk-nome
           display wk-nome


           display "Antes " wk-data

           inspect wk-data replacing all '.' by '/'

           display "Depois " wk-data

           INSPECT wk-nome
              CONVERTING 'abcdefghijklmnopqrstuvwxyz'
                      TO 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

           display wk-nome


           stop run.



