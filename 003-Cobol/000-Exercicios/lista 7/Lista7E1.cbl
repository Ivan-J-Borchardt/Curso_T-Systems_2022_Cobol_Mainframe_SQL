      *Divisao de identificacao
       identification division.
       program-id. "Lista7E1".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 05/10/2022.
       date-compiled. 05/10/2022.


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

      *
       01  wk-notas occurs 10.
           05  wk-nota                      pic 9(02)V99 values 99.


       01  wk-viariaveis-numericas.
           05  wk-maior-nota                pic 9(02)V99 value 0.
           05  wk-somatoria-notas           pic 9(03)V99 value 0.
           05  wk-qtd-notas                 pic 9(02).
           05  wk-media-turma               pic 9(02)V99.
           05  wk-qtd-alunos-acima-media    pic 9(02)    value 0.

       01  wk-indices.
           05  wk-ind                       pic 9(02).

       77  wk-menu                          pic x(01).
           88 wk-sair                       value "s".



       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           perform varying wk-ind from 1 by 1 until wk-ind > 10
                                                 or wk-sair
              display "Nota: "
              accept wk-nota(wk-ind)

              display "Continuar (c) ou Sair (s)"
              accept wk-menu

           end-perform

      *    questao A - Media da turma
           perform varying wk-qtd-notas from 1 by 1
                                 until wk-qtd-notas > 10
                                 or wk-nota(wk-qtd-notas) = 99

              add wk-nota(wk-qtd-notas)  to wk-somatoria-notas

           end-perform

           subtract 1 from wk-qtd-notas

           compute wk-media-turma = wk-somatoria-notas / wk-qtd-notas

      *    questao B - Contando a qtd de alunos acima da m«edia
           perform varying wk-ind  from 1 by 1 until wk-ind > 10
                                         or wk-nota(wk-ind) = 99

               if wk-nota(wk-ind) > wk-media-turma then
                   add 1 to wk-qtd-alunos-acima-media
               end-if

           end-perform

      *    questao C - Descobrindo a maior nota
           perform varying wk-ind  from 1 by 1 until wk-ind > 10
                                         or wk-nota(wk-ind) = 99

               if wk-nota(wk-ind) > wk-maior-nota then
                   move wk-nota(wk-ind) to  wk-maior-nota
               end-if

           end-perform

      *    Relatorio
           display "Media da turma: " wk-media-turma
           display "Qtd Alunos acima da media: "
                   wk-qtd-alunos-acima-media
           display "Maior Nota: " wk-maior-nota

      *    questao D - Descobrindo em posicoes a maoir nota ocorre
           perform varying wk-ind  from 1 by 1 until wk-ind > 10
                                         or wk-nota(wk-ind) = 99

               if wk-nota(wk-ind) = wk-maior-nota then
                   display "Aluno " wk-ind " tem a maior Nota"
               end-if

           end-perform



	   stop run.


