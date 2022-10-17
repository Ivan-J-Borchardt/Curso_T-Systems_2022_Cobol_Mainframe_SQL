      *Divisao de identificacao
       identification division.
       program-id. "Lista6E7".
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
       77  wk-num-secreto                       pic 9(02) value 0.
       77  wk-num-apostado                      pic 9(02) value 0.
       77  wk-tentativa                         pic 9(01) value 0.



       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

      *    Sorteia o numero secreto
           compute wk-num-secreto = function random() * 11

           perform varying wk-tentativa from 1 by 1
                                  until wk-tentativa > 3
                                  or wk-num-secreto = wk-num-apostado

      *        Aposta
               display "Sua Aposta (0 a 10):"
               accept wk-num-apostado

      *        Testa numero Aposta contra numero secreto
               if wk-num-apostado = wk-num-secreto then
                   display "Parabens vc acertou o numero em "
                           wk-tentativa " tentativas"
               end-if

               if wk-num-apostado < wk-num-secreto then
                   display "O numero apostado eh menor que o sorteado"
               end-if

               if wk-num-apostado > wk-num-secreto then
                   display "O numero apostado eh maior que o sorteado"
               end-if


           end-perform

           if wk-num-secreto <> wk-num-apostado then
               display "Que pena, mais sorte da proxima vez!"
           end-if


	   stop run.





