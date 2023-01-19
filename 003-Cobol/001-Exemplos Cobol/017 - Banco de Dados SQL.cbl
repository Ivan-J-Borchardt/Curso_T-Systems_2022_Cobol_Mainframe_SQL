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


       01 medico.
          05 wk-cod-medico              pic 9(05).
          05 wk-nome                    pic x(35).
          05 wk-crm                     pic x(15).



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

          move 3      to    wk-cod-medico
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
           if sqlcode not = 0 then
               perform z-finaliza-erro
           end-if

           display "Cod : " wk-cod-medico
           display "Nome: " wk-nome
           display "crm : " wk-crm

           .
       b-processa-z.
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





