      *Divisao de identificacao
       identification division.
       program-id. "NumerosRandomicos".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 23/09/2022.
       date-compiled. 23/09/2022.


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


       77  wk-num-rand                    pic 9(02) value 0.
       77  wk-num-jogada                  pic 9(02) value 9.
       77  wk-cont-jogadas                pic 9(03) value 0.


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


      *    Numeros randomicos
           perform until wk-num-rand = wk-num-jogada

               compute wk-num-rand = function random() * 5

               display "Faca sua aposta: "
               accept wk-num-jogada

      *        compute wk-cont-jogadas  = wk-cont-jogadas + 1
               add 1 to wk-cont-jogadas

           end-perform

           display "Jogo Encerrado!!!"
           display "Numero de jogadas "  wk-cont-jogadas

      *---- Teste de mesa
      *     wk-num-rand : 3
      *     wk-num-jogada:  3
      *     wk-cont-jogadas: 2

	   stop run.

