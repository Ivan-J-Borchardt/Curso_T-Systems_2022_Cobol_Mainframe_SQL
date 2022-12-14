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
           organization is line sequential
           access mode is sequential
           file status is wk-fs-arqAlunos.

           select sortAlunos assign to "SortAlunos.txt"
           sort status is wk-ss-arqAlunos.


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
      *>copy aluno.

       sd sortAlunos.
       01  sd-aluno.
           05  sd-aluno-nome                        pic  x(10).
           05  sd-aluno-serie                       pic  9(02).
           05  sd-aluno-cpf                         pic  x(12).


      *>----Variaveis de trabalho
       working-storage section.

       77 wk-fs-arqAlunos                          pic 9(02).

       77 wk-ss-arqAlunos                          pic 9(02).


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

           perform exemplo-sort.
           perform finaliza.

      *>------------------------------------------------------------------------
      *>  Ordenando o arquivo
      *>------------------------------------------------------------------------
       exemplo-sort section.


           sort sortAlunos
               on descending key sd-aluno-nome
      *>        on ascending key ...
               using arqAlunos
               giving arqAlunos.

           if  wk-ss-arqAlunos not equal '00'
               display "Erro ao ordenar arquivo arqAlunos " wk-ss-arqAlunos
           end-if

           .
       exemplo-sort-exit.
           exit.




      *>------------------------------------------------------------------------
      *>  Finalização
      *>------------------------------------------------------------------------
       finaliza section.

           stop run
           .
       finaliza-exit.
           exit.













