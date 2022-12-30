      $set sourceformat"free"

      *>Divisão de identificação do programa
       identification division.
       program-id. "balance_line".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 14/12/2022.
       date-compiled. 14/12/2022.



      *>Divisão para configuração do ambiente
       environment division.
       configuration section.
           special-names. decimal-point is comma.

      *>-----Declaração dos recursos externos
       input-output section.
       file-control.

           select arqAlunos assign to "arqAlunosDados.txt"
           organization is line sequential
           access mode is sequential
           file status is wk-fs-arqAlunos.

           select arqNotas assign to "arqAlunosNotas.txt"
           organization is line sequential
           access mode is sequential
           file status is wk-fs-arqNotas.

           select arqBoletin assign to "arqBoletin.txt"
           organization is line sequential
           access mode is sequential
           file status is wk-fs-arqBoletin.



       i-o-control.

      *>Declaração de variáveis
       data division.

      *>----Variaveis de arquivos
       file section.
       fd arqAlunos.
       01  fd-aluno.
           05  fd-aluno-matricula                    pic  x(10).
           05  fd-aluno-nome                         pic  x(25).
           05  fd-aluno-serie                        pic  9(02).
           05  fd-aluno-cpf                          pic  x(14).

       fd arqNotas.
       01  fd-notas.
           05 fd-notas-matricula                     pic  x(10).
           05 fd-notas-disciplina                    pic  x(04).
           05 fd-notas-notas.
              10 fd-notas-nota occurs 15             pic  9(02)v99.

       fd arqBoletin.
       01  fd-boletin.
           05 fd-boletin-matricula                   pic  x(10).
           05 fd-boletin-nome                        pic  x(25).
           05 fd-boletin-serie                       pic  9(02).
           05 fd-boletin-disciplina                  pic  x(04).
           05 fd-boletin-notas.
              10 fd-boletin-nota occurs 15           pic  9(02)v99.
           05 fd-boletin-media                       pic  9(02)v99.

      *>----Variaveis de trabalho
       working-storage section.

      *>     File Status
       77  wk-fs-arqAlunos                            pic x(02).

       77  wk-fs-arqNotas                             pic x(02).

       77  wk-fs-arqBoletin                           pic x(02).

      *>   Variaveis de Trabalho dos arquivos

       01  wk-aluno.
           05  wk-aluno-matricula                    pic  x(10).
           05  wk-aluno-nome                         pic  x(25).
           05  wk-aluno-serie                        pic  9(02).
           05  wk-aluno-cpf                          pic  x(12).

      *>   Subscritores/Indexadores
       01  wk-ind.
           05  wk-i-nota                             pic 9(02).

      *>   Estatisticas
       77  wk-qtd-alunos-lidos                       pic 9(06) comp.
       77  wk-qtd-notas-lidos                        pic 9(06) comp.

      *>   Mensagem de erro
       77  wk-msn                                    pic x(60).

      *>   Variaveis auxiliares
       77  wk-sum-notas                              pic 9(03)v99.
       77  wk-media-notas                            pic 9(02)v99.

      *>----Variaveis para comunicação entre programas
       linkage section.


      *>----Declaração de tela
       screen section.

      *>Declaração do corpo do programa
       procedure division.



           perform a-inicializa.
           perform b-processa.
           perform z-finaliza.


      *>*****************************************************************
      *>   Procedimento de Incializaçao
      *>*****************************************************************
       a-inicializa section.
       a-inicializa-a.

           open input arqAlunos
           if wk-fs-arqAlunos not equal "00" then
              string "Erro abertura Arquivo arqAlunos: " wk-fs-arqAlunos
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if

           open input arqNotas
           if wk-fs-arqNotas not equal "00" then
              string "Erro abertura Arquivo arqNotas: " wk-fs-arqNotas
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if

           open output arqBoletin
           if wk-fs-arqBoletin not equal "00" then
              string "Erro abertura Arquivo arqBoletin: " wk-fs-arqBoletin
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if


           .
       a-inicializa-z.
           exit.

      *>*****************************************************************
      *>   Procedimento Principal
      *>*****************************************************************
       b-processa section.
       b-processa-a.

           perform ba-ler-aluno
           perform bb-ler-notas

           perform until wk-fs-arqAlunos  equal "10"
                     and wk-fs-arqNotas   equal "10"

              evaluate true
                 when fd-aluno-matricula equal fd-notas-matricula
                    perform bc-gravar-boletin
                    perform ba-ler-aluno
                    perform bb-ler-notas

                 when fd-aluno-matricula less than fd-notas-matricula
                    perform ba-ler-aluno

                 when fd-aluno-matricula greater than fd-notas-matricula
                    perform bb-ler-notas


              end-evaluate

           end-perform

           .
       b-processa-z.
           exit.


      *>*****************************************************************
      *>   Leitura do arquivo arqAluno
      *>*****************************************************************
       ba-ler-aluno section.
       ba-ler-aluno-a.

           read arqAlunos
             at end
                move "10"            to    wk-fs-arqAlunos
                move high-values     to    fd-aluno-matricula
             not at end
                if   wk-fs-arqAlunos  not equal "00"
                and  wk-fs-arqAlunos  not equal "10"  then
                   move spaces       to    wk-msn
                   string "Erro Leitura arquivo arqAlunos, File Status: "
                           wk-fs-arqAlunos   delimited by size
                     into wk-msn
                   end-string
                   perform  z-finaliza-erro
                end-if

                if wk-fs-arqAlunos equal "00" then
                   add 1 to wk-qtd-alunos-lidos
                end-if
           end-read

           .
       ba-ler-aluno-z.
           exit.

      *>*****************************************************************
      *>   Leitura do arquivo arqNotas
      *>*****************************************************************
       bb-ler-notas section.
       bb-ler-notas-a.

           read arqNotas
             at end
                move "10"            to    wk-fs-arqNotas
                move high-values     to    fd-notas-matricula
             not at end
                if   wk-fs-arqNotas  not equal "00"
                and  wk-fs-arqNotas  not equal "10"  then
                   move spaces       to    wk-msn
                   string "Erro Leitura arquivo arqNotas, File Status: "
                           wk-fs-arqNotas   delimited by size
                     into wk-msn
                   end-string
                   perform  z-finaliza-erro
                end-if

                if wk-fs-arqNotas equal "00" then
                   add 1 to wk-qtd-notas-lidos
                end-if
           end-read

           .
       bb-ler-notas-z.
           exit.

      *>*****************************************************************
      *>   Gravar Arquivo Boletin
      *>*****************************************************************
       bc-gravar-boletin section.
       bc-gravar-boletin-a.
           move fd-aluno-matricula     to      fd-boletin-matricula
           move fd-aluno-nome          to      fd-boletin-nome
           move fd-aluno-serie         to      fd-boletin-serie
           move fd-notas-disciplina    to      fd-boletin-disciplina
           move fd-notas-notas         to      fd-boletin-notas

           move zero                   to      wk-sum-notas
           perform varying wk-i-nota from 1 by 1 until wk-i-nota > 15
                          or fd-notas-nota(wk-i-nota) = 99,99
              add fd-notas-nota(wk-i-nota)  to   wk-sum-notas
           end-perform
           compute wk-media-notas  =  wk-sum-notas/(wk-i-nota - 1)


           move wk-media-notas         to      fd-boletin-media

           write fd-boletin
           if   wk-fs-arqNotas  not equal "00"  then

              move spaces       to    wk-msn
              string "Erro gravacao arquivo arqBoletin, File Status: "
                      wk-fs-arqBoletin   delimited by size
                into wk-msn
              end-string
              perform  z-finaliza-erro
           end-if




           .
       bc-gravar-boletin-z.
           exit.





      *>*****************************************************************
      *>   Procedimento de Finaliazaçao com erro
      *>*****************************************************************
       z-finaliza-erro section.
       z-finaliza-erro-a.
           display erase
           display wk-msn

           stop run.
           .
       z-finaliza-erro-z.
           exit.



      *>*****************************************************************
      *>   Procedimento de Finaliazaçao Normal
      *>*****************************************************************
       z-finaliza section.
       z-finaliza-a.
           display erase
           display "Finalizando Programa..."

           close arqAlunos
           if wk-fs-arqAlunos not equal "00" then
              string "Erro fechamento Arquivo arqAlunos: " wk-fs-arqAlunos
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if

           close arqNotas
           if wk-fs-arqNotas not equal "00" then
              string "Erro fechamento Arquivo arqNotas: " wk-fs-arqNotas
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if

           close arqBoletin
           if wk-fs-arqBoletin not equal "00" then
              string "Erro fechamento Arquivo arqBoletin: " wk-fs-arqBoletin
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if


           stop run.
           .
       z-finaliza-z.
           exit.
















