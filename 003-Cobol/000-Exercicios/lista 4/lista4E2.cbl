      *Divisao de identificacao
       identification division.
       program-id. "Lista4E2".
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
       77  wk-ano-nascimento                pic 9(04).
       77  wk-ano-atual                     pic 9(04) value 2022.
       77  wk-idade                         pic 9(03).




       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           display "Ano de Nascimento: "
           accept wk-ano-nascimento


           compute wk-idade = wk-ano-atual - wk-ano-nascimento


           if wk-idade >= 16 then
               display "Voce ja pode votar!"
           else
               display "Voce ainda nao pode votar!"
           end-if




	   stop run.

