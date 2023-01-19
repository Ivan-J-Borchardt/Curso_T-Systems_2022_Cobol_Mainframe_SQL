      $set ms(2)
      $set sourceformat"free"
      $SET SQL(dbman=ODBC)

       identification division.
       program-id. odbcsql.
       author. Ivan J. Borchardt.
       date-written.
       environment division.
         configuration section.

       working-storage section.

       EXEC SQL
         INCLUDE SQLCA
       END-EXEC

       EXEC SQL
           BEGIN DECLARE SECTION
       END-EXEC.
       01  ws-cd-agente        pic 9(5).
       01  ws-nm-agente        pic x(50).
       01  ws-id-agencia       pic x(20).
       EXEC SQL
           END DECLARE SECTION
       END-EXEC.

       01  ws-campos-trabalho.
           03 ws-teclas                   pic x(02).
              88 esc                               value "01".
           03 wcodigo                     pic 9(5).
           03 wnome                       pic x(50).
           03 wagencia                    pic x(20).
           03 ws-opcao-tela               pic x    value spaces.
           03 ws-opcao                    pic 9(1) value 0.

       screen section.
       01  scr-menu.
           03 blank screen.
           03 line 01 column 01 "Menu Principal      ".
           03 line 02 column 01 "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ".
           03 line 03 column 01 "(1) Cadastro Agentes".
           03 line 04 column 01 "(2) Exclusão Agentes".
           03 line 05 column 01 "(3) Listagem Agentes".
           03 line 06 column 01 "( ) Opcao".
           03 line 07 column 01 "F1-Ajuda".

       procedure division.
           perform 1000-inicio
           perform 2000-processo
           perform 3000-finaliza.

       0000-saida.
            exit program
            stop run.
       *>=============================================================
       1000-inicio section.
       1000.
           perform 1001-conecta-banco.
       1000-saida.
       1000.
           exit.
       *>=============================================================
       1001-conecta-banco section.
       1001.
           *> Conecta ao banco DB SQL Lite via driver ODBC
           EXEC SQL
                CONNECT TO "DBExemplo.db"
           END-EXEC
           *> Comando abaixo para utilizar a conexão autenticação
           *> CONNECT TO :ws-svr USER :usr-pass
           if sqlcode not = 0
                display "Error: not connected"
                display sqlcode
                display sqlerrmc
                stop run
           end-if
           *> Cria a tabela
           EXEC SQL
              create table agentes (
                  cd_agente integer primary key,
                  nm_agente char(50),
                  id_agencia char(20))
           END-EXEC
           EXEC SQL
             commit transaction
           END-EXEC
           if  sqlcode not = 0
              display "Erro: commit "
              display sqlcode
              display sqlerrmc
              stop run
           end-if
           .
       1001-saida.
       1001.
           exit.
       *>=============================================================

       2000-processo section.
       2000.
          display erase
          perform 2001-menu-principal until ws-opcao equal 9.
       2000-exit section.
       2000.
          exit.
       *>=============================================================

       2001-menu-principal section.
       2001.
          display scr-menu
          move 0                  to ws-opcao
          accept (06, 2) ws-opcao with update auto-skip
          accept ws-teclas from escape key
          if   esc
               perform 3000-finaliza
          end-if
          evaluate ws-opcao
              when 1
                  perform 2001-incluir
              when 2
                  perform 2002-excluir
              when 3
                  perform 2003-listar
              when 9
                  perform 3000-finaliza
          end-evaluate
          EXEC SQL
             commit transaction
         END-EXEC
         if sqlcode not = 0
              display "Erro: commit "
              display sqlcode
              display sqlerrmc
              stop run
         end-if
        .

       2001-exit section.
       2001.
          exit.
       *>=============================================================

       2001-incluir section.
       2001.
          display erase
          display "Cadastro de Agentes" at 0430
          display "Codigo             : " at 0605
          accept wcodigo                  at 0625
          move wcodigo                    to ws-cd-agente
          display "Nome               : " at 0705
          display "Agencia            : " at 0805
          initialize wnome wagencia
          EXEC SQL
                  SELECT cd_agente, nm_agente, id_agencia INTO :wcodigo, :wnome, :wagencia
                  FROM agentes WHERE  cd_agente = :wcodigo
          END-EXEC
          display wnome                    at 0725
          display wagencia                 at 0825
          if sqlcode = 0
             display "Agente ja existe. Deseja alterar [S/N]: "  at  1005
             accept ws-opcao-tela
             if   function upper-case(ws-opcao-tela) =  "S"
                  display "                                       "  at  1005
                  accept wnome                    at 0725
                  move wnome                      to ws-nm-agente
                  accept wagencia                 at 0825
                  move wagencia                   to ws-id-agencia
                  perform 2001-2-regravar-arquivo
             end-if
          else
             display "                                       "  at  1005
             accept wnome                    at 0725
             move wnome                      to ws-nm-agente
             accept wagencia                 at 0825
             move wagencia                   to ws-id-agencia
             perform 2001-1-gravar-arquivo
          end-if.

       2002-exit.
       2002.
          exit.
       *>=============================================================

       2001-1-gravar-arquivo section.
       2001-1.
           EXEC SQL
               insert into agentes
                   (cd_agente,nm_agente,id_agencia) values
                   (:ws-cd-agente, :ws-nm-agente, :ws-id-agencia)
           END-EXEC
           if sqlcode not = 0
                display "Erro: Inserir registro "
                display sqlcode
                display sqlerrmc
                stop run
           end-if.

       2001-1-exit section.
       2001-1.
          exit.
       *>=============================================================

       2001-2-regravar-arquivo section.
       2001-2.
           EXEC SQL
               update agentes set
               nm_agente = :ws-nm-agente,
               id_agencia = :ws-id-agencia
               where cd_agente = :ws-cd-agente
           END-EXEC
           if sqlcode not = 0
                display "Erro: Alterar registro "
                display sqlcode
                display sqlerrmc
           end-if.

       2001-2-exit section.
       2001-2.
          exit.
       *>=============================================================

       2002-excluir section.
       2002.
          display erase
          display "Excluir Agente "       at 0430
          display "Codigo             : " at 0605
          accept wcodigo                  at 0625
          EXEC SQL
                  SELECT nm_agente INTO :wnome
                  FROM AGENTES where cd_agente = :wcodigo
          END-EXEC
          if sqlcode = 0
              display wnome                    at 0725
              display "Voce Realmente quer excluir o Agente? [S/N]: "  at  1005
              accept ws-opcao-tela
              if   function upper-case(ws-opcao-tela) =  "S"
                   EXEC SQL
                       delete from agentes where
                           cd_agente = : wcodigo
                   END-EXEC
                   if sqlcode not = 0
                        display "Erro: Nao foi possivel excluir Agente "
                        display sqlcode
                        display sqlerrmc
                   end-if
              end-if
          end-if.
       2002-exit.
       2002.
          exit.
       *>=============================================================
       2003-listar section.
       2003.
           move "S"     to ws-opcao-tela
           perform until ws-opcao-tela <> "S"
           display erase
           display "Relatorio de Agentes" at 0430

           display "Informe a Agencia  : " at 0605
           accept wagencia                 at 0625

           *> Monta resultado do select
           EXEC SQL
               DECLARE tab-listar-agentes CURSOR FOR
                   select cd_agente, nm_agente, id_agencia from AGENTES
                   where id_agencia = :wagencia
                   order by id_agencia
           END-EXEC

           *> Abre o resultado da do select
           EXEC SQL OPEN tab-listar-agentes END-EXEC

           if sqlcode not = 0
                display sqlcode
                display sqlerrmc
           else
               *> Se a tabela de resultados do select retornar com valores, lista linha a linha do resultado
               perform until exit
                   EXEC SQL
                       FETCH tab-listar-agentes INTO
                           :wcodigo, :wnome, :wagencia
                   END-EXEC
                   display  " "
                   if sqlcode = 100
                       exit perform
                   end-if
                   if sqlcode not = 0
                       display sqlcode
                       display sqlerrmc
                       exit perform
                   else
                       display "Codigo :  " wcodigo
                       display "Nome   :  " wnome
                       display "Agencia:  " wagencia
                   end-if
               end-perform
           end-if
           EXEC SQL CLOSE tab-listar-agentes END-EXEC
           display "Deseja realizar nova listagem? [S/N]: "
           accept ws-opcao-tela
           end-perform.

       2003-exit section.
       2003.
          exit.
       *>=============================================================

       3000-finaliza section.
       3000.
       display (01, 01) erase
       stop run.
       *>=============================================================

