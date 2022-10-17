      *Divisao de identificacao
       identification division.
       program-id. "Lista6E3".
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



       01  wk-acumuladores.
           05  wk-cont-maior-5             pic 9(03) value 0.
           05  wk-cont-mult-3              pic 9(03) value 0.

       01  wk-auxiliares.
           05 wk-resultado                 pic 9(02).
           05 wk-resto                     pic 9(02).

       77  wk-ind                          pic 9(03).


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           perform 20 times

      *        gera numero randomico
               compute wk-num = function random() * 11

               display "->" wk-num


      *        conta numeros maiores que 5
               if wk-num > 5 then
                  add 1 to  wk-cont-maior-5
               end-if

      *        conta numeros multiplos de 3
               divide wk-num by 3
                                 giving wk-resultado
                              remainder wk-resto

               if wk-resto equal 0 then
                  add 1 to  wk-cont-mult-3
               end-if


           end-perform

      *    Exibindo Relatorio
           display "------------- Relatorio ----------------"

           display "Qtd. de num. Multiplos de 3: " wk-cont-mult-3
           display "Qtd. de num. maiores que  5: " wk-cont-maior-5


	   stop run.




