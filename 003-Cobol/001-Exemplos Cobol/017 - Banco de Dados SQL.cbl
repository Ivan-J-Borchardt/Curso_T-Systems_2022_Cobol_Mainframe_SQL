      $SET SQL(dbman=ODBC)

      *Divisao de identificacao
       identification division.
       program-id. "exemploSQL".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 19/01/2023.
       date-compiled. 19/01/2023.


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


       EXEC SQL
       INCLUDE SQLCA
       END-EXEC

       exec sql
           begin declare section
       end-exec
       01 wk-db-medico.
          05 wk-db-cod-medico            pic 9(05).
          05 wk-db-nome                  pic x(35).
          05 wk-db-crm                   pic x(15).
          05 wk-db-cod-end               pic 9(05).
          05 wk-db-cod-esp               pic 9(05).
       exec sql
           end declare section
       end-exec



       01 wk-medico.
          05 wk-cod-medico              pic 9(05).
          05 wk-nome                    pic x(35).
          05 wk-crm                     pic x(15).
          05 wk-cod-end                 pic 9(05).
          05 wk-cod-esp                 pic 9(05).


       77 wk-menu                       pic x.
          88 wk-sair                    value "S" "s".

       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           perform a-inicializa.
           perform b-processa.
           perform z-finaliza-normal.


      ******************************************************************
      *   Procedimento de Incializaçao
      ******************************************************************
       a-inicializa section.
       a-inicializa-a.
      *    Conecta ao banco DB SQL Lite via driver ODBC
           EXEC SQL
                CONNECT TO "clinica.db"
           END-EXEC
           if sqlcode not = 0 then
               perform z-finaliza-erro
           end-if

           .
       a-inicializa-z.
           exit.

      ******************************************************************
      *   Procedimento Principal
      ******************************************************************
       b-processa section.
       b-processa-a.

           perform until wk-sair
               display "1 - Buscar Medico"
               display "2 - Listar todos os Medicos"
               display "3 - Inserir novo Medico"
               display "4 - Alterar Medico"
               display "5 - Deletar Medico"

               accept wk-menu

               evaluate wk-menu
                   when  "1"
                       perform r-buscar-medico

                   when  "2"
                       perform r-listar-medico

                   when "3"
                       perform r-inserir-medico

                   when "4"
                       perform r-alterar-medico

                   when "5"
                       perform r-deletar-medico

                   when other
                       display "Opcao incalida"
               end-evaluate
           end-perform

           .
       b-processa-z.
           exit.



      ******************************************************************
      *   Buscar Medico
      ******************************************************************
       r-buscar-medico section.
       r-buscar-medico-a.

          display "Informe o codigo do medico: "
          accept wk-cod-medico

          EXEC SQL
             SELECT cod,
                    nome,
                    crm
              INTO :wk-cod-medico,
                   :wk-nome,
                   :wk-crm
              FROM medico
             WHERE cod = :wk-cod-medico
          END-EXEC
           if sqlcode not = 0
           and sqlcode not = 100 then
               perform z-finaliza-erro
           end-if

           if sqlcode = 100 then
               display "Medico nao cadastrado..."
           else
               display "Cod : " wk-cod-medico
               display "Nome: " wk-nome
               display "crm : " wk-crm
           end-if

           .
       r-buscar-medico-z.
           exit.


      ******************************************************************
      *   Listar Medicos
      ******************************************************************
       r-listar-medico section.
       r-listar-medico-a.

           EXEC SQL
              declare cursor_med cursor for
                   SELECT cod,
                          nome,
                          crm
                     from medico
                   order by nome
           END-EXEC


           exec sql
              open cursor_med
           end-exec

           if sqlcode not = 0 then
               perform z-finaliza-erro
           end-if

           perform until sqlcode = 100

              exec sql
                 fetch cursor_med
                  into :wk-cod-medico,
                       :wk-nome,
                       :wk-crm
              end-exec
              if  sqlcode not = 0
              and sqlcode not = 100 then
                 perform z-finaliza-erro
              end-if

              display "-----------------------------"
              display "Cod : " wk-cod-medico
              display "Nome: " wk-nome
              display "crm : " wk-crm

           end-perform

           exec sql
              close cursor_med
           end-exec


           .
       r-listar-medico-z.
           exit.

      ******************************************************************
      *   Inserir Medico
      ******************************************************************
       r-inserir-medico section.
       r-inserir-medico-a.

           display "codigo: "
           accept wk-cod-medico

           display "Nome: "
           accept wk-nome

           display "Crm: "
           accept wk-crm

           display "Cod_end: "
           accept wk-cod-end

           display "Cod_esp: "
           accept wk-cod-esp

           move wk-cod-medico      to    wk-db-cod-medico
           move wk-nome            to    wk-db-nome
           move wk-crm             to    wk-db-crm
           move wk-cod-end         to    wk-db-cod-end
           move wk-cod-esp         to    wk-db-cod-esp

           EXEC SQL
              insert into medico(cod,
                                 nome,
                                 crm,
                                 cod_end,
                                 cod_esp)
                          values (:wk-db-cod-medico,
                                  :wk-db-nome,
                                  :wk-db-crm,
                                  :wk-db-cod-end,
                                  :wk-db-cod-esp)

           END-EXEC
           if sqlcode not = 0
           and sqlcode not = 19 then
               perform z-finaliza-erro
           end-if

           if sqlcode = 19 then
               display "Nao foi possivel salvar Med. Codico ja existe"
           else
               exec sql
                  commit transaction
               end-exec
               if sqlcode not = 0
                  perform z-finaliza-erro
               end-if
               display "Medico salvo com sucesso!"
           end-if
           .
       r-inserir-medico-z.
           exit.


      ******************************************************************
      *   Alterar Medico
      ******************************************************************
       r-alterar-medico section.
       r-alterar-medico-a.

           display "codigo: "
           accept wk-cod-medico

           display "Nome: "
           accept wk-nome

           display "Crm: "
           accept wk-crm

           display "Cod_end: "
           accept wk-cod-end

           display "Cod_esp: "
           accept wk-cod-esp

           move wk-cod-medico      to    wk-db-cod-medico
           move wk-nome            to    wk-db-nome
           move wk-crm             to    wk-db-crm
           move wk-cod-end         to    wk-db-cod-end
           move wk-cod-esp         to    wk-db-cod-esp

           EXEC SQL
              update medico
                 set nome    = :wk-db-nome,
                     crm     = :wk-db-crm,
                     cod_end = :wk-db-cod-end,
                     cod_esp = :wk-db-cod-esp
               where cod = :wk-db-cod-medico
           END-EXEC
           if sqlcode not = 0
           and sqlcode not = 100 then
               perform z-finaliza-erro
           end-if

           if sqlcode = 100 then
               display "Nao foi possivel alterar dados, codigo invalido"
           else
               exec sql
                   commit transaction
               end-exec

               if sqlcode not = 0
                   perform z-finaliza-erro
               end-if

               display "Medico alterado com sucesso!"
           end-if

           .
       r-alterar-medico-z.
           exit.

      ******************************************************************
      *   deletar Medico
      ******************************************************************
       r-deletar-medico section.
       r-deletar-medico-a.

           display "Informe o codigo do medico: "
           accept wk-cod-medico

           EXEC SQL
             delete from medico
             WHERE cod = :wk-cod-medico
           END-EXEC
           if sqlcode not = 0
           and sqlcode not = 100 then
               perform z-finaliza-erro
           end-if

           if sqlcode = 100 then
               display "Medico nao cadastrado..."
           else
               exec sql
                  commit transaction
               end-exec
               if sqlcode not = 0
                  perform z-finaliza-erro
               end-if

               display "Medico deletado com sucesso!"
           end-if

           .
       r-deletar-medico-z.
           exit.




      ******************************************************************
      *   Procedimento de Finaliazaçao em caso de erro
      ******************************************************************
       z-finaliza-erro section.
       z-finaliza-erro-a.
           display erase
           display "Finalizando Programa com erro ..."
           display sqlcode
           display sqlerrmc

           stop run.
           .
       z-finaliza-erro-z.
           exit.



      ******************************************************************
      *   Procedimento de Finaliazaçao
      ******************************************************************
       z-finaliza-normal section.
       z-finaliza-normal-a.
           display "Finalizando Programa..."

           stop run.
           .
       z-finaliza-normal-z.
           exit.





