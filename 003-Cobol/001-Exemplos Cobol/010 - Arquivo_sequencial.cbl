      $set sourceformat"free"

      *>Divisão de identificação do programa
       identification division.
       program-id. "arquivo_sequencial".
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

           select arqAlunos assign to "arqAlunos.txt"
           organization is sequential
           access mode is sequential
           file status is wk-fs-arqAlunos.



       i-o-control.

      *>Declaração de variáveis
       data division.

      *>----Variaveis de arquivos
       file section.
       fd arqAlunos.
       01  fd-aluno.
           05  fd-aluno-nome                        pic  x(10).
           05  fd-aluno-serie                       pic  9(02).
           05  fd-aluno-cpf                         pic  x(12).



      *>----Variaveis de trabalho
       working-storage section.

       77 wk-fs-arqAlunos                          pic 9(02).

       77 ws-sair                                  pic  x(01).
          88  fechar-programa                      value "N" "n".
          88  voltar-tela                          value "V" "v".

       77  ws-menu                                 pic  x(02).

       01  wk-aluno  occurs 1000.
           05  wk-aluno-nome                        pic  x(10).
           05  wk-aluno-serie                       pic  9(02).
           05  wk-aluno-cpf                         pic  x(12).

       77  wk-ind                                   pic  9(04) value 0.

      *>----Variaveis para comunicação entre programas
       linkage section.


      *>----Declaração de tela
       screen section.

      *>Declaração do corpo do programa
       procedure division.


           perform exemplo-leitura.
           perform exemplo-escrita.
           perform processamento.
           perform finaliza.

      *>------------------------------------------------------------------------
      *>  Lendo o arquivo
      *>------------------------------------------------------------------------
       exemplo-leitura section.
           open input  arqAlunos
           if wk-fs-arqAlunos <> 0 then
               display "Erro ao abrir Arquivo arqAlunos " wk-fs-arqAlunos
           end-if


           perform until wk-fs-arqAlunos <> 0
               read arqAlunos
               if  wk-fs-arqAlunos <> 0
               and wk-fs-arqAlunos <> 10 then
                   display "Erro ao ler Arquivo arqAlunos " wk-fs-arqAlunos
               else
                   add  1              to    wk-ind
                   move fd-aluno       to    wk-aluno(wk-ind)
               end-if
            end-perform





           close arqAlunos
           if wk-fs-arqAlunos <> 0 then
               display "Erro ao fechar Arquivo arqAlunos " wk-fs-arqAlunos
           end-if


           .
       exemplo-leitura-exit.
           exit.



      *>------------------------------------------------------------------------
      *>  escrevendo no arquivo
      *>------------------------------------------------------------------------
       exemplo-escrita section.

           open output  arqAlunos
           if wk-fs-arqAlunos <> 0 then
               display "Erro ao abrir Arquivo arqAlunos " wk-fs-arqAlunos
           end-if


           move "Joana"        to    fd-aluno-nome
           move 6              to    fd-aluno-serie
           move "000000000-12" to    fd-aluno-cpf

           write fd-aluno
           if  wk-fs-arqAlunos <> 0  then
               display "Erro ao escrever Arquivo arqAlunos " wk-fs-arqAlunos
           end-if


           close arqAlunos
           if wk-fs-arqAlunos <> 0 then
               display "Erro ao fechar Arquivo arqAlunos " wk-fs-arqAlunos
           end-if


           .
       exemplo-escrita-exit.
           exit.



      *>------------------------------------------------------------------------
      *>  Processamento principal
      *>------------------------------------------------------------------------
       processamento section.

           perform until fechar-programa
               move space to ws-sair
               display "'Ca'dastrar"
               display "'Co'nsultar"

               accept ws-menu

               evaluate ws-menu
                   when = "Ca"
                       perform cadastra-temp

                   when = "Co"
                       perform consultar

                   when other
                       display "opcao invalida"
               end-evaluate


           end-perform


           .
       processamento-exit.
           exit.

      *>------------------------------------------------------------------------
      *>  Rotina de consulta - lê o arquivo
      *>------------------------------------------------------------------------
       consultar section.

           .
       consultar-exit.
           exit.





      *>------------------------------------------------------------------------
      *>  Rotina de cadastro  - escreve no arquivo
      *>------------------------------------------------------------------------
       cadastra-temp section.

           .
       cadastra-temp-exit.
           exit.



      *>------------------------------------------------------------------------
      *>  Finalização
      *>------------------------------------------------------------------------
       finaliza section.

           Stop run
           .
       finaliza-exit.
           exit.













