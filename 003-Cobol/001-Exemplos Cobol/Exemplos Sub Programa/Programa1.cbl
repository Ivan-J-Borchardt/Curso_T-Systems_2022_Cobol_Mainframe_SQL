      *Divisao de identificacao
       identification division.
       program-id. "Programa1".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 01/11/2022.
       date-compiled. 01/11/2022.


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

       01  wk-usuario.
           05  wk-nome                 pic x(15).
           05  wk-idade                pic 9(03).
           05  wk-data                 pic x(10).

       77  wk-senha                    pic x(08).

       linkage section.


       screen section.

      *Declaracao do corpo do programa
       procedure division.


           perform a-inicializa.
           perform b-processa.
           perform z-finaliza.


      ******************************************************************
      *   Procedimento de Incializaçao
      ******************************************************************
       a-inicializa section.
       a-inicializa-a.
           move "Joao"         to     wk-nome
           move  25            to     wk-idade
           move  "01/11/2022"  to     wk-data

           move "xxxttt"       to     wk-senha

           .
       a-inicializa-z.
           exit.

      ******************************************************************
      *   Procedimento Principal
      ******************************************************************
       b-processa section.
       b-processa-a.

           call "programa2" using wk-usuario,
                                  wk-senha

           display "Programa1 " wk-nome
           display "Programa1 " wk-idade
           display "Programa1 " wk-data
           display "Programa1 " wk-senha



           .
       b-processa-z.
           exit.

      ******************************************************************
      *   Procedimento de Finaliazaçao
      ******************************************************************
       z-finaliza section.
       z-finaliza-a.
           stop run.
           .
       z-finaliza-z.
           exit.



