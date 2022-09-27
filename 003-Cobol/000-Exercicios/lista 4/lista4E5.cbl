      *Divisao de identificacao
       identification division.
       program-id. "Lista4E5".
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
       77  wk-ano                           pic 9(04).
       77  wk-resultado                     pic 9(02).
       77  wk-resto4                        pic 9(02).
       77  wk-resto100                      pic 9(02).
       77  wk-resto400                      pic 9(04).

       77  wk-msn                           pic x(40).





       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           display "Ano   : "
           accept wk-ano

           divide wk-ano by 4  giving wk-resultado remainder wk-resto4
           divide wk-ano by 100  giving wk-resultado
                  remainder wk-resto100

           divide wk-ano by 400  giving wk-resultado
                  remainder wk-resto400

           if  wk-resto400 = 0  then
               move  "Ano  eh bissesto" to wk-msn
           else
               if wk-resto100 = 0 then
                   move  "Ano nao eh bissesto" to wk-msn
               else
                   if wk-resto4 = 0 then
                       move  "Ano eh bissesto" to wk-msn
                   else
                       move  "Ano nao eh bissesto" to wk-msn
                   end-if
               end-if
           end-if

           display wk-msn

           stop run.

