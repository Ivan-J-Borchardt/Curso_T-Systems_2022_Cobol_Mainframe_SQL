      *Divisao de identificacao
       identification division.
       program-id. "Lista4E8".
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
           05  wk-distancia                     pic 9(03)V99.
           05  wk-valor-passagem                pic 9(06)V99.





       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           display "Distancia: "
           accept wk-distancia


           if wk-distancia < 200 then
               compute wk-valor-passagem = wk-distancia  * 0,50
           else
               compute wk-valor-passagem = wk-distancia  * 0,45
           end-if


           display "Preco Passagem: " wk-valor-passagem


	   stop run.

