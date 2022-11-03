      $set sourceformat"free"
      *>Divisao de identificacao
       identification division.
       program-id. "Programa1".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 03/11/2022.
       date-compiled. 03/11/2022.


      *>Divisao de configuracao do ambiente
       environment division.
       configuration section.
	    special-names. decimal-point is comma.

      *>------- Declaracao de recursos externos
       input-output section.
       file-control.
       i-o-control.



      *>Declaracao de variaveis
       data division.
       file section.


      *>Variaveis do programa
       working-storage section.

       01 wk-tela-aut-senha.
          05 wk-user-id                            pic x(15).
             88 wk-user-ok                         value "F0FP898".

          05 wk-password                           pic x(20).
             88 wk-senha-ok                        value "Trocar123".





       linkage section.

      *>   Vetores/Tabelas
       01  lk-aut-senha.
           05  lk-user-id                            pic x(15).
           05  lk-password                           pic x(20).
           05  lk-status-aut                         pic 9(01).



      *>Declaracao do corpo do programa
       procedure division using lk-aut-senha.

           perform a-inicializa.
           perform b-processa.
           perform z-finaliza.



      *>*****************************************************************
      *>   Procedimento de Incializaçao
      *>*****************************************************************
       a-inicializa section.
       a-inicializa-a.
           move  lk-user-id     to   wk-user-id
           move  lk-password    to   wk-password
           .
       a-inicializa-z.
           exit.


      *>*****************************************************************
      *>   Processamento principal
      *>*****************************************************************
       b-processa section.
       b-processa-a.

           if  wk-user-ok
           and wk-senha-ok  then
              move 0   to   lk-status-aut
           end-if

           if not wk-senha-ok  then
              move 1   to   lk-status-aut
           end-if

           if not wk-user-ok  then
              move 2   to   lk-status-aut
           end-if






           .
       b-processa-z.
           exit.



      *>*****************************************************************
      *>   Procedimentos de finalizacao
      *>*****************************************************************
       z-finaliza section.
       z-finaliza-a.
           exit program
           .
       z-finaliza-z.
           exit.


