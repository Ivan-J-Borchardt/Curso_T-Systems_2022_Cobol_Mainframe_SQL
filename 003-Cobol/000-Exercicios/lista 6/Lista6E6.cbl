      *Divisao de identificacao
       identification division.
       program-id. "Lista6E6".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 07/10/2022.
       date-compiled. 07/10/2022.


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

      *    Itens de grupo e variaveis em sub-niveis...
       01  wk-notas occurs  100.
           05  wk-nota                    pic 9(02)v99 value 99.

       01  wk-indices.
           05  wk-ind-nota                pic 9(03) value 0.
           05  wk-ind-med                 pic 9(03) value 0.
           05  wk-ind-maior-med           pic 9(03) value 0.
           05  wk-ind-maior-nota          pic 9(03) value 0.

       01  wk-var-num.
           05  wk-tam-vet-notas           pic 9(03) value 100.
           05  wk-acc-notas               pic 9(04) value 0.
           05  wk-acc-notas-acima-med     pic 9(04) value 0.
           05  wk-media-notas             pic 9(02)v99.
           05  wk-maior-nota              pic 9(02)v99 value 0.

       77  wk-menu                        pic x(01).

       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           perform until wk-menu = "s"
               display "----MENU PRINCIPAL-----"
               display "1. Cadastro de Notas"
               display "2. Verificar media da turma"
               display "3. Verificar qtd Alunos acima da media"
               display "4. Verificar maior Nota Cadastrada"
               display "5. Verificar posicao da maior Nota"
               display "s. Para sair"
               accept wk-menu

               evaluate wk-menu
                  when "1"
                     perform cadastro-notas

                  when "2"
                     perform media-turma

                  when "3"
                     perform qtd-alunos-acima-media

                  when "4"
                     perform maior-nota-cadastrada

                  when "5"
                     perform indice-nota-cadastrada

                  when "s"
                     display "Encerrando Programa"
                  when other
                     display "Opcao Invalida"
               end-evaluate

           end-perform




           stop run.

      ******************************************************************
      *    Cadastrar notas
      ******************************************************************
       cadastro-notas section.
       cadastro-notas-a.

           display "----- Cadastro de Notas -----"
           add 1 to wk-ind-nota

           display "Nota: "
           accept wk-nota(wk-ind-nota)

           .
       cadastro-notas-z.
           exit.


      ******************************************************************
      *   Calcular a media da turma
      ******************************************************************
       media-turma section.
       media-turma-a.
           display  "---- Media da Turma ----"
           move     0      to     wk-acc-notas
           perform varying wk-ind-med from 1 by 1
                                   until wk-ind-med > wk-tam-vet-notas
                                      or wk-nota(wk-ind-med) = 99
               add  wk-nota(wk-ind-med) to  wk-acc-notas
           end-perform


           compute wk-media-notas =  wk-acc-notas  / (wk-ind-med - 1)

           display "Media: " wk-media-notas

           .
       media-turma-z.
           exit.

      ******************************************************************
      *    Encontrar qtd de anulos acima da media
      ******************************************************************
       qtd-alunos-acima-media section.
       qtd-alunos-acima-media-a.
           display  "---- Alunos acima da Media ----"

           perform varying wk-ind-maior-med from 1 by 1
                             until wk-ind-maior-med > wk-tam-vet-notas
                                  or wk-nota(wk-ind-maior-med) = 99
               if wk-nota(wk-ind-maior-med) > wk-media-notas then
                   add 1 to  wk-acc-notas-acima-med
               end-if
           end-perform

           display "Qtd de Alunos Acima da Media: "
                   wk-acc-notas-acima-med
           .
       qtd-alunos-acima-media-z.
           exit.

      ******************************************************************
      *    Encontrar a maior nota cadastrada
      ******************************************************************
       maior-nota-cadastrada section.
       maior-nota-cadastrada-a.
           display  "---- A Maior Nota Cadastrada ----"

           perform varying wk-ind-maior-nota from 1 by 1
                             until wk-ind-maior-nota > wk-tam-vet-notas
                                  or wk-nota(wk-ind-maior-nota) = 99
               if wk-nota(wk-ind-maior-nota) > wk-maior-nota then
                   move wk-nota(wk-ind-maior-nota)   to  wk-maior-nota
               end-if
           end-perform

           display "Maior Nota: " wk-maior-nota
           .
       maior-nota-cadastrada-z.
           exit.

      ******************************************************************
      *    Encontrar a posicao da maior nota cadastrada
      ******************************************************************
       indice-nota-cadastrada section.
       indice-nota-cadastrada-a.
           display  "---- Indices da maior Nota ----"

           perform varying wk-ind-maior-nota from 1 by 1
                             until wk-ind-maior-nota > wk-tam-vet-notas
                                  or wk-nota(wk-ind-maior-nota) = 99
               if wk-nota(wk-ind-maior-nota) = wk-maior-nota then
                   display "Ind Maior Nota: " wk-ind-maior-nota
               end-if
           end-perform


           .
       indice-nota-cadastrada-z.
           exit.



