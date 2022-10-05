      *Divisao de identificacao
       identification division.
       program-id. "Variaveis".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 03/10/2022.
       date-compiled. 03/10/2022.


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

       01  wk-numbers.
           05  wk-num1                    pic x(06).
           05  wk-num2                    pic x(05).
           05  wk-resultado               pic s9(10)v999 value zeroes.
	   05  wk-resultado2		  pic 9(05).
	   05  wk-resto			  pic 9(02).
           05  wk-data.
               10  wk-dia                 pic x(02) value "03".
               10  filler                 value "/".
               10  wk-mes                 pic x(02) value "10".
               10  filler                 value "/".
               10  wk-ano                 pic x(04) value "2022".


       77  wk-num-rand                    pic 9(02).
       77  wk-cont-jogadas                pic 9(02) value 2.

       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

            display "wk-num1 " wk-num1-n
            display "wk-num2 " wk-num2

            display "Data: " wk-data





	   stop run.

