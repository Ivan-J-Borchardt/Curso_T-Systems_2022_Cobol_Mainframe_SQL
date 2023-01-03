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

           select arq1 assign to "arq1.txt"
           organization is line sequential
           access mode is sequential
           file status is wk-fs-arq1.

           select arq2 assign to "arq2.txt"
           organization is line sequential
           access mode is sequential
           file status is wk-fs-arq2.

           select arqResul assign to "arqResul.txt"
           organization is line sequential
           access mode is sequential
           file status is wk-fs-arqResul.

           select sortArq1 assign to "SortArq1.txt"
           sort status is wk-ss-arq1.

           select sortArq2 assign to "SortArq2.txt"
           sort status is wk-ss-arq2.



       i-o-control.

      *>Declaração de variáveis
       data division.

      *>----Variaveis de arquivos
       file section.
       fd arq1.
       01  fd-arq1.
           05  fd-1-id                                pic  x(03).
           05  fd-1-dados                             pic  x(04).

       fd arq2.
       01  fd-arq2.
           05  fd-2-id                                pic  x(03).
           05  fd-2-dados                             pic  x(04).

       fd arqResul.
       01  fd-arqResul.
           05  fd-r-id                                pic  x(03).
           05  fd-r-dados                             pic  x(04).

       sd sortArq1.
       01  sd-arq1.
           05  sd-1-id                                pic  x(03).
           05  sd-1-dados                             pic  x(04).

       sd sortArq2.
       01  sd-arq2.
           05  sd-2-id                                pic  x(03).
           05  sd-2-dados                             pic  x(04).


      *>----Variaveis de trabalho
       working-storage section.

      *>     File Status
       77  wk-fs-arq1                                 pic x(02).
           88  wk-fs-1-ok                             value "00".
           88  wk-eof-1                               value "10".

       77  wk-fs-arq2                                 pic x(02).
           88  wk-fs-2-ok                             value "00".
           88  wk-eof-2                               value "10".


       77  wk-fs-arqResul                             pic x(02).
           88  wk-fs-r-ok                             value "00".

       77  wk-ss-arq1                                 pic x(02).
           88  wk-ss-1-ok                             value "00".

       77  wk-ss-arq2                                 pic x(02).
           88  wk-ss-2-ok                             value "00".


      *>   Estatisticas
       77  wk-qtd-arq1                                pic 9(06) value 0.
       77  wk-qtd-arq2                                pic 9(06) value 0.
       77  wk-qtd-arqResul                            pic 9(06) value 0.


      *>   Mensagem de erro
       77  wk-msn                                    pic x(60).


      *>----Variaveis para comunicação entre programas
       linkage section.


      *>----Declaração de tela
       screen section.

      *>Declaração do corpo do programa
       procedure division.

           perform a-inicializa.
        *> perform b-processa. *> Algoritmo Balance Line Intersecção
           perform c-processa. *> Algoritmo Balance Line União
           perform z-finaliza.


      *>*****************************************************************
      *>   Procedimento de Incializaçao
      *>*****************************************************************
       a-inicializa section.
       a-inicializa-a.

      *>    ordenando os arquivos de entrada
           sort sortArq1
             on ascending key sd-1-id
                using arq1
               giving arq1.

           if  not wk-ss-1-ok then
              string "Erro ao ordenar arq1: " wk-ss-arq1
                      delimited by size
                into wk-msn
              end-string
              perform z-finaliza-erro
           end-if
      *>
           sort sortArq2
             on ascending key sd-2-id
                using arq2
               giving arq2.

           if  not wk-ss-2-ok then
              string "Erro ao ordenar arq2: " wk-ss-arq2
                      delimited by size
                into wk-msn
              end-string
              perform z-finaliza-erro
           end-if


           open input arq1
           if not wk-fs-1-ok then
              string "Erro abertura Arquivo arq1: " wk-fs-arq1
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if

           open input arq2
           if not wk-fs-2-ok then
              string "Erro abertura Arquivo arq2: " wk-fs-arq2
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if

           open output arqResul
           if not wk-fs-r-ok then
              string "Erro abertura Arquivo arqResul: " wk-fs-arqResul
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
      *>   - Algoritmo Balance line Intersecção
      *>*****************************************************************
       b-processa section.
       b-processa-a.

           perform ba-ler-arq1
           perform ba-ler-arq2

           perform until wk-eof-1
                     and wk-eof-2

              evaluate true
                 when fd-1-id equal fd-2-id
                    perform bc-gravar-resul
                    perform ba-ler-arq1
                    perform ba-ler-arq2

                 when fd-1-id less than fd-2-id
                    perform ba-ler-arq1

                 when fd-1-id greater than fd-2-id
                    perform ba-ler-arq2
              end-evaluate

           end-perform

           .
       b-processa-z.
           exit.


      *>*****************************************************************
      *>   Procedimento Principal
      *>   - Algoritmo Balance line Uniao
      *>*****************************************************************
       c-processa section.
       c-processa-a.

           perform ba-ler-arq1
           perform ba-ler-arq2

           perform until wk-eof-1
                     and wk-eof-2

              evaluate true
                 when fd-1-id equal fd-2-id
                    move fd-arq2  to  fd-arqResul
                    perform bc-gravar-resul
                    perform ba-ler-arq1
                    perform ba-ler-arq2

                 when fd-1-id less than fd-2-id
                    move fd-arq1  to  fd-arqResul
                    perform bc-gravar-resul
                    perform ba-ler-arq1

                 when fd-1-id greater than fd-2-id
                    move fd-arq2  to  fd-arqResul
                    perform bc-gravar-resul
                    perform ba-ler-arq2
              end-evaluate

           end-perform

           .
       c-processa-z.
           exit.


      *>*****************************************************************
      *>   Leitura do arquivo arq1
      *>*****************************************************************
       ba-ler-arq1 section.
       ba-ler-arq1-a.

           read arq1
             at end
                set wk-eof-1         to    true
                move high-values     to    fd-1-id
             not at end
                if wk-fs-1-ok then
                   add 1 to wk-qtd-arq1
                else
                   move spaces       to    wk-msn
                   string "Erro Leitura arquivo arq1, File Status: "
                           wk-fs-arq1   delimited by size
                     into wk-msn
                   end-string
                   perform  z-finaliza-erro
                end-if
           end-read

           .
       ba-ler-arq1-z.
           exit.

      *>*****************************************************************
      *>   Leitura do arquivo arq2
      *>*****************************************************************
       ba-ler-arq2 section.
       ba-ler-arq2-a.

           read arq2
             at end
                set wk-eof-2         to    true
                move high-values     to    fd-2-id
             not at end
                if wk-fs-2-ok then
                   add 1 to wk-qtd-arq2
                else
                   move spaces       to    wk-msn
                   string "Erro Leitura arquivo arq2, File Status: "
                           wk-fs-arq2   delimited by size
                     into wk-msn
                   end-string
                   perform  z-finaliza-erro
                end-if
           end-read

           .
       ba-ler-arq2-z.
           exit.

      *>*****************************************************************
      *>   Gravar Arquivo Boletin
      *>*****************************************************************
       bc-gravar-resul section.
       bc-gravar-resul-a.

           write fd-arqResul
           if wk-fs-r-ok  then
              add  1            to    wk-qtd-arqResul
           else
              move spaces       to    wk-msn
              string "Erro gravacao arquivo arqResul, File Status: "
                      wk-fs-arqResul   delimited by size
                into wk-msn
              end-string
              perform  z-finaliza-erro
           end-if

           .
       bc-gravar-resul-z.
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
           display "Registros Lidos Arq1: " wk-qtd-arq1
           display "Registros Lidos Arq2: " wk-qtd-arq2
           display "Registros gravados  ArqResul: " wk-qtd-arqResul


           display "Finalizando Programa..."

           close arq1
           if not wk-fs-1-ok  then
              string "Erro fechamento Arquivo arq1: " wk-fs-arq1
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if

           close arq2
           if not wk-fs-2-ok  then
              string "Erro fechamento Arquivo arq2: " wk-fs-arq2
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if

           close arqResul
           if not wk-fs-r-ok  then
              string "Erro fechamento Arquivo arqResul: " wk-fs-arqResul
                      delimited by size
                into wk-msn
              end-string

              perform z-finaliza-erro
           end-if


           stop run.
           .
       z-finaliza-z.
           exit.
















