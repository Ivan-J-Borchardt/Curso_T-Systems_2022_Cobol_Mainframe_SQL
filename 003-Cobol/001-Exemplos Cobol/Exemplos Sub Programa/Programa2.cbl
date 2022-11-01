      *Divisao de identificacao
       identification division.
       program-id. "Programa2".
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


       linkage section.

       01  lk-usuario.
           05  lk-nome                 pic x(15).
           05  lk-idade                pic 9(03).
           05  lk-data                 pic x(10).

       77  lk-senha                    pic x(08).

       screen section.

      *Declaracao do corpo do programa
       procedure division using lk-usuario, lk-senha.


           perform a-inicializa.
           perform b-processa.
           perform z-finaliza.


      ******************************************************************
      *   Procedimento de Incializaçao
      ******************************************************************
       a-inicializa section.
       a-inicializa-a.

           .
       a-inicializa-z.
           exit.

      ******************************************************************
      *   Procedimento Principal
      ******************************************************************
       b-processa section.
       b-processa-a.


           display "Programa2 " lk-nome
           display "Programa2 " lk-idade
           display "Programa2 " lk-data
           display "Programa2 " lk-senha

           move "Anabela"         to     lk-nome
           move  30               to     lk-idade
           move  "15/12/2020"     to     lk-data

           move "sdfgh"           to     lk-senha



           .
       b-processa-z.
           exit.

      ******************************************************************
      *   Procedimento de Finaliazaçao
      ******************************************************************
       z-finaliza section.
       z-finaliza-a.
           exit program.
           .
       z-finaliza-z.
           exit.



