      $set sourceformat"free"

      *>Divisão de identificação do programa
       identification division.
       program-id. "arquivo_indexado".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 09/11/2022.
       date-compiled. 09/11/2022.



      *>Divisão para configuração do ambiente
       environment division.
       configuration section.
           special-names. decimal-point is comma.

      *>-----Declaração dos recursos externos
       input-output section.
       file-control.

           select arqAlunos assign to "arqAlunosInd.txt"
           organization is indexed
           access mode is dynamic
           record key is fd-aluno-cpf
           file status is wk-fs-arqAlunos.



       i-o-control.

      *>Declaração de variáveis
       data division.

      *>----Variaveis de arquivos
       file section.
       fd arqAlunos.
       01  fd-aluno.
           05  fd-aluno-cpf                         pic  x(12).
           05  fd-aluno-nome                        pic  x(10).
           05  fd-aluno-serie                       pic  9(02).



      *>----Variaveis de trabalho
       working-storage section.

       77  wk-fs-arqAlunos                          pic x(02).

       77  wk-primeiro-cpf                          pic x(12).


       01  wk-msn-erro.
           05 wk-msn-erro-adress                    pic x(04).
           05 filler                                pic x(03) value " - ".
           05 wk-msn-erro-cod                       pic x(02).
           05 filler                                pic x(01) value space.
           05 wk-msn-erro-text                      pic x(40).


       01  wk-tela-aluno.
           05  wk-aluno-cpf                        pic  x(12).
           05  wk-aluno-nome                       pic  x(10).
           05  wk-aluno-serie                      pic  9(02) value zero.


       01  wk-tela-principal.
           05  wk-cadastrar                        pic x(01).
               88 wk-eh-cadastrar                  value "X" "x" "S" "s".

           05  wk-consultar-ind                    pic x(01).
               88 wk-eh-consultar-ind              value "X" "x" "S" "s".

           05  wk-consultar-seq                    pic x(01).
               88 wk-eh-consultar-seq              value "X" "x" "S" "s".

           05  wk-deletar                          pic x(01).
               88 wk-eh-deletar                    value "X" "x" "S" "s".

           05  wk-alterar                          pic x(01).
               88 wk-eh-alterar                    value "X" "x" "S" "s".




       77  wk-msn                                  pic x(70).
       77  wk-menu                                 pic x(01).
           88  wk-sair                             value "X" "x" "S" "s".
           88  wk-voltar                           value "V" "v".


       77  wk-aluno-flag                           pic x(01).
           88 wk-aluno-valido                      value "v".
           88 wk-aluno-invalido                    value "i".



      *>----Variaveis para comunicação entre programas
       linkage section.


      *>----Declaração de tela
       screen section.


      *>                                    0    1    1    2    2    3    3    4    4    5    5    6    6    7    7    8
      *>                                    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0
      *>                                ----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+

       01  sc-tela-principal.
           05 blank screen.
           05 line 01 col 01 value     "                                                                                ".
           05 line 02 col 01 value     "                                                                        [ ]     ".
           05 line 03 col 01 value     "        [ ]Cadastrar                                                            ".
           05 line 04 col 01 value     "        [ ]Consulta indexada                                                    ".
           05 line 05 col 01 value     "        [ ]Consulta sequencial                                                  ".
           05 line 06 col 01 value     "        [ ]Deletar                                                              ".
           05 line 07 col 01 value     "        [ ]Alterar                                                              ".
           05 line 24 col 01 value     "    [                                                                      ]    ".

           05 sc-menu             line 02   col 74   pic x(01)
           using wk-menu          foreground-color 12.

           05 sc-cadastar         line 03   col 10   pic x(01)
           using wk-cadastrar       foreground-color 12.

           05 sc-consultar-ind    line 04   col 10   pic x(01)
           using wk-consultar-ind foreground-color 12.

           05 sc-consultar-seq    line 05   col 10   pic x(01)
           using wk-consultar-seq foreground-color 12.

           05 sc-deletar          line 06   col 10   pic x(01)
           using wk-deletar       foreground-color 12.

           05 sc-alterar          line 07   col 10   pic x(01)
           using wk-alterar       foreground-color 12.

           05 sc-msn              line 24   col 06   pic x(70)
           from wk-msn foreground-color 12.



      *>                                    0    1    1    2    2    3    3    4    4    5    5    6    6    7    7    8
      *>                                    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0
      *>                                ----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+

       01  sc-tela-aluno.
           05 blank screen.
           05 line 01 col 01 value     "                                                                                ".
           05 line 02 col 01 value     "                                                                        [ ]     ".
           05 line 03 col 01 value     "        CPF   :                                                                 ".
           05 line 04 col 01 value     "        Nome  :                                                                 ".
           05 line 05 col 01 value     "        Serie :                                                                 ".
           05 line 24 col 01 value     "    [                                                                      ]    ".

           05 sc-menu             line 02   col 74   pic x(01)
           using wk-menu          foreground-color 12.

           05 sc-cpf              line 03   col 17   pic x(12)
           using wk-aluno-cpf     foreground-color 12.

           05 sc-aluno-nome       line 04   col 17   pic x(10)
           using wk-aluno-nome    foreground-color 12.


           05 sc-aluno-serie      line 05   col 17   pic 9(02)
           using wk-aluno-serie   foreground-color 12.


           05 sc-msn              line 24   col 06   pic x(70)
           from wk-msn foreground-color 12.






      *>Declaração do corpo do programa
       procedure division.


           perform a-inicializa.
           perform b-processa.
           perform z-finaliza-normal.


      *>*****************************************************************
      *>   Procedimento de Incializaçao
      *>*****************************************************************
       a-inicializa section.
       a-inicializa-a.

           open i-o arqAlunos
           if   wk-fs-arqAlunos not equal "00"
           and  wk-fs-arqAlunos not equal "05" then
               move "0001"                              to      wk-msn-erro-adress
               move wk-fs-arqAlunos                     to      wk-msn-erro-cod
               move "Erro ao abrir Arquivo arqAlunos"   to      wk-msn-erro-text
               perform z-finaliza-anormal
           end-if

           read arqAlunos next
           if   wk-fs-arqAlunos not equal "00"
           and  wk-fs-arqAlunos not equal "10"  then
                  move "0001"                              to      wk-msn-erro-adress
                  move wk-fs-arqAlunos                     to      wk-msn-erro-cod
                  move "Erro ao Ler Arquivo arqAlunos"     to      wk-msn-erro-text
                  perform z-finaliza-anormal
           end-if

           move  fd-aluno-cpf                              to       wk-primeiro-cpf




           .
       a-inicializa-z.
           exit.


      *>*****************************************************************
      *>   Procedimento Principal
      *>*****************************************************************
       b-processa section.
       b-processa-a.

           perform until wk-sair
               initialize wk-tela-principal

               display sc-tela-principal
               accept sc-tela-principal

               move space to wk-msn

               if wk-eh-cadastrar then
                   perform ba-cadastrar
               end-if

               if wk-eh-consultar-ind then
                   perform bb-consultar-ind
               end-if

               if wk-eh-consultar-seq then
                   perform bc-consultar-seq-next
               end-if

               if wk-eh-deletar then
                  perform bd-deletar
               end-if

               if wk-eh-alterar then
                  perform be-alterar
               end-if

           end-perform


           .
       b-processa-z.
           exit.

      *>*****************************************************************
      *>   Rotina de Cadastro (Salvar)
      *>*****************************************************************
       ba-cadastrar section.
       ba-cadastrar-a.

           initialize wk-tela-aluno

           set wk-aluno-invalido                    to      true
           perform until wk-aluno-valido

               set wk-aluno-valido                  to      true
               display sc-tela-aluno
               accept sc-tela-aluno

               if wk-aluno-serie < 1
               or wk-aluno-serie > 9 then
                   move "Conteudo invalido - Serie"  to     wk-msn
                   set wk-aluno-invalido             to     true
               end-if

               if wk-aluno-nome = space then
                   move "Campo Obrigatorio - Nome"  to      wk-msn
                   set wk-aluno-invalido            to      true
               end-if

               if wk-aluno-cpf = space then
                   move "Campo Obrigatorio - CPF"   to      wk-msn
                   set wk-aluno-invalido            to      true
               end-if


           end-perform
           move space                               to      wk-msn


           write fd-aluno   from   wk-tela-aluno
           if   wk-fs-arqAlunos not equal "00"
           and  wk-fs-arqAlunos not equal "22" then
               move "0001"                               to      wk-msn-erro-adress
               move wk-fs-arqAlunos                      to      wk-msn-erro-cod
               move "Erro ao escrevar Arquivo arqAlunos" to      wk-msn-erro-text
               perform z-finaliza-anormal
           else
               if   wk-fs-arqAlunos  equal "22"  then
                   string "CPF "            delimited by size
                          wk-aluno-cpf      delimited by size
                          " ja cadastrado!" delimited by size
                     into wk-msn
                   end-string
               end-if
           end-if



           .
       ba-cadastrar-z.
           exit.


      *>*****************************************************************
      *>   Rotina de Consulta Indexada
      *>*****************************************************************
       bb-consultar-ind section.
       bb-consultar-ind-a.
           initialize wk-tela-aluno

      *>    perform until wk-voltar
               display sc-tela-aluno
               accept sc-tela-aluno

               move  space                                       to      wk-msn
               move wk-aluno-cpf                                 to      fd-aluno-cpf
               read arqAlunos
               if   wk-fs-arqAlunos not equal "00" then
                   if   wk-fs-arqAlunos equal "23" then
                       move "CPF nao cadastrado"                 to      wk-msn
                   else
                       move "0001"                               to      wk-msn-erro-adress
                       move wk-fs-arqAlunos                      to      wk-msn-erro-cod
                       move "Erro ao Ler Arquivo arqAlunos"      to      wk-msn-erro-text
                       perform z-finaliza-anormal
                   end-if
               else
                   move fd-aluno                                to       wk-tela-aluno
                   display sc-tela-aluno
                   accept sc-tela-aluno

               end-if
      *>    end-perform

           .
       bb-consultar-ind-z.
           exit.

      *>*****************************************************************
      *>   Rotina de Consulta Sequencial - do comeco para o final do arq.
      *>*****************************************************************
       bc-consultar-seq-next section.
       bc-consultar-seq-next-a.

           perform bb-consultar-ind

      *>   resetando o arquivo caso File Status = 23, para reposicionar o ponteiro do arquivo...
           if wk-fs-arqAlunos equal "23" then
                perform u-resetar-ponteiro-arquivo
           end-if

           perform until wk-voltar
               read arqAlunos next
               if   wk-fs-arqAlunos not equal "00"
               and  wk-fs-arqAlunos not equal "10"  then
                  move "0001"                              to      wk-msn-erro-adress
                  move wk-fs-arqAlunos                     to      wk-msn-erro-cod
                  move "Erro ao Ler Arquivo arqAlunos"     to      wk-msn-erro-text
                  perform z-finaliza-anormal
               else
                  if   wk-fs-arqAlunos equal "10" then
      *>               perform bc-consultar-seq-prev
                      perform u-resetar-ponteiro-arquivo
                  else
                      move  fd-aluno                               to       wk-tela-aluno
                      display sc-tela-aluno
                      accept sc-tela-aluno
                      move space                                   to       wk-msn
                  end-if
               end-if


           end-perform
           .
       bc-consultar-seq-next-z.
           exit.

      *>*****************************************************************
      *>   Rotina de Consulta Sequencial - do final para o comeco
      *>*****************************************************************
       bc-consultar-seq-prev section.
       bc-consultar-seq-prev-a.


           perform until wk-voltar


               read arqAlunos previous
               if   wk-fs-arqAlunos not equal "00"
               and  wk-fs-arqAlunos not equal "10"  then
                   move "0001"                              to      wk-msn-erro-adress
                   move wk-fs-arqAlunos                     to      wk-msn-erro-cod
                   move "Erro ao Ler Arquivo arqAlunos"     to      wk-msn-erro-text
                   perform z-finaliza-anormal
               else
                   if   wk-fs-arqAlunos equal "10" then
                       perform bc-consultar-seq-next
                   end-if
               end-if

               move  fd-aluno                               to       wk-tela-aluno
               display sc-tela-aluno
               accept sc-tela-aluno

               move space                                   to       wk-msn

           end-perform
           .
       bc-consultar-seq-prev-z.
           exit.



      *>*****************************************************************
      *>   Rotina de Delecao
      *>*****************************************************************
       bd-deletar section.
       bd-deletar-a.
           initialize wk-tela-aluno

           display sc-tela-aluno
           accept sc-tela-aluno

           move  space                                       to      wk-msn
           move wk-aluno-cpf                                 to      fd-aluno-cpf
           delete arqAlunos
           if   wk-fs-arqAlunos  equal "00" then
               move "Aluno deletado com sucesso!"             to      wk-msn
           else
               if   wk-fs-arqAlunos equal "23" then
                    move "CPF nao cadastrado"                 to      wk-msn
               else
                    move "0001"                               to      wk-msn-erro-adress
                    move wk-fs-arqAlunos                      to      wk-msn-erro-cod
                    move "Erro ao Deletar Arquivo arqAlunos"  to      wk-msn-erro-text
                    perform z-finaliza-anormal
               end-if
           end-if


           .
       bd-deletar-z.
           exit.

      *>*****************************************************************
      *>   Rotina de Alteracao
      *>*****************************************************************
       be-alterar section.
       be-alterar-a.

           perform bc-consultar-seq-next

           move wk-tela-aluno   to   fd-aluno

           rewrite fd-aluno
           if   wk-fs-arqAlunos not equal "00" then
               move "0001"                               to      wk-msn-erro-adress
               move wk-fs-arqAlunos                      to      wk-msn-erro-cod
               move "Erro ao alterar Arquivo arqAlunos"  to      wk-msn-erro-text
               perform z-finaliza-anormal
           else
               string "Cadastro "     delimited by size
                      wk-aluno-cpf    delimited by size
                      " alterado com sucesso " delimited by size
                 into wk-msn
               end-string
           end-if



           .
       be-alterar-z.
           exit.



      *>*****************************************************************
      *>   Reposiciona o ponteiro do arquivo para o primeiro registro
      *>*****************************************************************
       u-resetar-ponteiro-arquivo section.
       u-resetar-ponteiro-arquivo-a.

           move  wk-primeiro-cpf                               to      fd-aluno-cpf
           start arqAlunos
           if   wk-fs-arqAlunos not equal "00" then
               move "0001"                                     to      wk-msn-erro-adress
               move wk-fs-arqAlunos                            to      wk-msn-erro-cod
               move "Erro ao dar Start no Arquivo arqAlunos"   to      wk-msn-erro-text
               perform z-finaliza-anormal
           end-if



      *>   close arqAlunos
      *>   if   wk-fs-arqAlunos not equal "00" then
      *>       move "0001"                               to      wk-msn-erro-adress
      *>       move wk-fs-arqAlunos                      to      wk-msn-erro-cod
      *>       move "Erro ao fechar Arquivo arqAlunos"   to      wk-msn-erro-text
      *>       perform z-finaliza-anormal
      *>   end-if


      *>   open i-o arqAlunos
      *>   if   wk-fs-arqAlunos not equal "00"
      *>   and  wk-fs-arqAlunos not equal "05" then
      *>       move "0001"                              to      wk-msn-erro-adress
      *>       move wk-fs-arqAlunos                     to      wk-msn-erro-cod
      *>       move "Erro ao abrir Arquivo arqAlunos"   to      wk-msn-erro-text
      *>       perform z-finaliza-anormal
      *>   end-if
           .
       u-resetar-ponteiro-arquivo-z.
           exit.






      *>*****************************************************************
      *>   Procedimento de Finaliazaçao Anormal
      *>*****************************************************************
       z-finaliza-anormal section.
       z-finaliza-anormal-a.
           display erase
           display wk-msn-erro

           stop run.
           .
       z-finaliza-anormal-z.
           exit.




      *>*****************************************************************
      *>   Procedimento de Finaliazaçao normal
      *>*****************************************************************
       z-finaliza-normal section.
       z-finaliza-normal-a.

           close arqAlunos
           if   wk-fs-arqAlunos not equal "00" then
               move "0001"                               to      wk-msn-erro-adress
               move wk-fs-arqAlunos                      to      wk-msn-erro-cod
               move "Erro ao fechar Arquivo arqAlunos"   to      wk-msn-erro-text
               perform z-finaliza-anormal
           end-if


           stop run.
           .
       z-finaliza-normal-z.
           exit.
















