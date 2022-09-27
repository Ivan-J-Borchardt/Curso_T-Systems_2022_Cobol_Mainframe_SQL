      *Divisao de identificacao
       identification division.
       program-id. "LIsta4E1".
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
       77  wk-velocidade                    pic 9(03)V99.
       77  wk-multa                         pic 9(03)V99.




       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           display "Qual foi a velocidade medida?"
           accept wk-velocidade

           if wk-velocidade > 80 then
               compute wk-multa = (wk-velocidade - 80) * 5,00
               display "Voce ultrapassou o limite de velocidade"
               display "Multa: " wk-multa
           else
               display "Parabens vc eh um bom motorista!"
           end-if




	   stop run.

