      *Divisao de identificacao
       identification division.
       program-id. "Aritmetics".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 26/01/2023.
       date-compiled. 26/01/2023.


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
       77 wk-num                        pic 9(03) value 0.

       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           display "wk-num " wk-num

           compute wk-num = wk-num - 1

           subtract 1 from wk-num
              on size error
                  display "Estouro de variavel..."

              not on size error
                  display "Tudo OK"
           end-subtract


           subtract 1 from wk-num
              on size error
                  display "Estouro de variavel..."

              not on size error
                  display "Tudo OK"
           end-subtract


           add 1 to wk-num
              on size error
                  display "Estouro de variavel..."

              not on size error
                  display "Tudo OK"
           end-add

           display "wk-num " wk-num


	   stop run.

