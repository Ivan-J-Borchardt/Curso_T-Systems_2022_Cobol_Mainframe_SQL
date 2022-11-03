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

      *>   Vetores/Tabelas
       01  wk-tela-aut-senha.
           05  wk-user-id                            pic x(15).
           05  wk-password                           pic x(20).
           05  wk-status-aut                         pic 9(01) value 9.
               88 wk-acesso-liberado                 value 0.
               88 wk-senha-incorreta                 value 1.
               88 wk-usuario-incorreto               value 2.

       77  wk-msn                                    pic x(70).
       77  wk-menu                                   pic x(01).
           88  wk-sair                               value "X" "x" "S" "s".

       77  wk-cont-tentativa                         pic 9(1) value 0.
           88  wk-limite-tentativas                  value 3.

       linkage section.


       screen section.

      *>                                    0    1    1    2    2    3    3    4    4    5    5    6    6    7    7    8
      *>                                    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0
      *>                                ----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+

       01  sc-tela-principal.
           05 blank screen.
           05 line 01 col 01 value     " L8E1 - Autenticacao                                                            ".
           05 line 02 col 01 value     "                                                                        [ ]     ".
           05 line 03 col 01 value     "                   **************************************                       ".
           05 line 04 col 01 value     "                   **************************************                       ".
           05 line 05 col 01 value     "                   **  User ID :                       **                       ".
           05 line 06 col 01 value     "                   **  Password:                       **                       ".
           05 line 07 col 01 value     "                   **************************************                       ".
           05 line 08 col 01 value     "                   **************************************                       ".
           05 line 24 col 01 value     "    [                                                                      ]    ".

           05 sc-menu             line 02   col 74   pic x(01)
           using wk-menu foreground-color 12.

           05 sc-user-id          line 05   col 34   pic x(15)
           using wk-user-id foreground-color 12.

           05 sc-password         line 06   col 34   pic x(20)
           using wk-password secure foreground-color 12.

           05 sc-msn              line 24   col 06   pic x(70)
           from wk-msn foreground-color 12.


      *>Declaracao do corpo do programa
       procedure division.

           perform a-inicializa.
           perform b-processa until wk-sair
                              or (wk-limite-tentativas and not wk-acesso-liberado)
                              or wk-acesso-liberado.
           perform z-finaliza.



      *>*****************************************************************
      *>   Procedimento de Incializaçao
      *>*****************************************************************
       a-inicializa section.
       a-inicializa-a.
           .
       a-inicializa-z.
           exit.


      *>*****************************************************************
      *>   Processamento principal
      *>*****************************************************************
       b-processa section.
       b-processa-a.
           add 1    to     wk-cont-tentativa

           initialize  wk-tela-aut-senha

           display  sc-tela-principal
           accept   sc-tela-principal

           if wk-user-id = spaces
           or wk-password = spaces then
               if wk-password = spaces then
                   move "Campo Senha, digitacao obrigatoria"  to  wk-msn
               end-if

               if wk-user-id = spaces then
                   move "Campo Usuario, digitacao obrigatoria"  to  wk-msn
               end-if

           else
               call "programa2"
               using wk-tela-aut-senha

               if wk-acesso-liberado then
                  move "Acesso Liberado"    to    wk-msn
                  perform ba-processamento-geral
               end-if

               if wk-senha-incorreta then
                  move "Senha incorreta"    to    wk-msn
               end-if

               if wk-usuario-incorreto then
                   move "Usuario Nao Cadastrado"  to wk-msn
               end-if


           end-if



           .
       b-processa-z.
           exit.


      *>*****************************************************************
      *>   Procedimentos de finalizacao
      *>*****************************************************************
       ba-processamento-geral section.
       ba-processamento-geral-a.
           display erase
           display "Aqui vai a logica do programa...."
           accept wk-menu
           .
       ba-processamento-geral-z.
           exit.



      *>*****************************************************************
      *>   Procedimentos de finalizacao
      *>*****************************************************************
       z-finaliza section.
       z-finaliza-a.

           if wk-limite-tentativas
              move "Senha Temporariamwente Bloqueada, tente mais tarde."  to  wk-msn
           else
              move "Fechando Programa..."   to wk-msn
           end-if

           initialize wk-tela-aut-senha
           display  sc-tela-principal
           accept   sc-tela-principal

           stop run.
           .
       z-finaliza-z.
           exit.


