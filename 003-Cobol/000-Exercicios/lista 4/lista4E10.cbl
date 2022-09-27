      *Divisao de identificacao
       identification division.
       program-id. "Lista4E10".
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
       01  wk-medidas.
           05  wk-peso                          pic 9(03)v999.
           05  wk-altura                        pic 9(01)v99.
           05  wk-imc                           pic 9(03)v99.

       77  wk-msn                               pic x(20).




       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           display "Peso "
           accept wk-peso

           display "Altura "
           accept wk-altura

           compute wk-imc = wk-peso / (wk-altura ** 2)

           if wk-imc <= 18,5 then
              move "Abaixo do Peso "    to  wk-msn
           end-if

           if  wk-imc > 18,5
           and wk-imc <= 25 then
              move "Peso Ideal "        to  wk-msn
           end-if

           if  wk-imc > 25
           and wk-imc <= 30 then
              move "Acima do Peso "     to  wk-msn
           end-if

           if  wk-imc > 30
           and wk-imc <= 40 then
              move "Obesidade "         to  wk-msn
           end-if

           if  wk-imc > 40 then
              move "Obesidade Morbida " to  wk-msn
           end-if

           display wk-msn

	   stop run.

