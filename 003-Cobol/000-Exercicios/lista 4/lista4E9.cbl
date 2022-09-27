      *Divisao de identificacao
       identification division.
       program-id. "Lista4E9".
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
       01  wk-variaveis.
           05  wk-lado1                         pic 9(03).
           05  wk-lado2                         pic 9(03).
           05  wk-lado3                         pic 9(03).






       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           display "Tamanho do lado 1 do triangulo: "
           accept wk-lado1

           display "Tamanho do lado 2 do triangulo: "
           accept wk-lado2

           display "Tamanho do lado 3 do triangulo: "
           accept wk-lado3

           if  wk-lado1 < (wk-lado2 + wk-lado3)
           and wk-lado2 < (wk-lado1 + wk-lado3)
           and wk-lado3 < (wk-lado2 + wk-lado1) then
               display "Triangulo eh possivel"
           else
               display "Triangulo nao eh possivel..."
           end-if


	   stop run.

