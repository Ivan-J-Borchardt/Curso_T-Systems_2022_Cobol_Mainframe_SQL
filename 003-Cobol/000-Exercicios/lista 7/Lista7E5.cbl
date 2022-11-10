      *Divisao de identificacao
       identification division.
       program-id. "Lista7E5".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 28/10/2022.
       date-compiled. 28/10/2022.


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
       01  wk-historico-temp occurs 30.
           05  wk-temp                      pic s9(02).

       77  wk-ind                           pic  9(02).
       77  wk-temp-aux                      pic s9(02).

       77  wk-algoritmo                     pic  x(02).


       77  wk-trocou-flag                   pic  x(01) value space.
           88 wk-trocou                     value "T".
           88 wk-nao-trocou                 value "N".

       linkage section.


       screen section.





      *Declaracao do corpo do programa
       procedure division.

           perform a-inicializa.
           perform b-processa.
           perform z-finaliza.

           stop run.


      ******************************************************************
      *   Procedimento de Incializaçao
      ******************************************************************
       a-inicializa section.
       a-inicializa-a.
           move 15  to   wk-temp(1)
           move 17  to   wk-temp(2)
           move 12  to   wk-temp(3)
           move 10  to   wk-temp(4)
           move 7   to   wk-temp(5)
           move 5   to   wk-temp(6)
           move 10  to   wk-temp(7)
           move 11  to   wk-temp(8)
           move 18  to   wk-temp(9)
           move 18  to   wk-temp(10)
           move 19  to   wk-temp(11)
           move 22  to   wk-temp(12)
           move 25  to   wk-temp(13)
           move 30  to   wk-temp(14)
           move 28  to   wk-temp(15)
           move 27  to   wk-temp(16)
           move 29  to   wk-temp(17)
           move 25  to   wk-temp(18)
           move 25  to   wk-temp(19)
           move 23  to   wk-temp(20)
           move 18  to   wk-temp(21)
           move 17  to   wk-temp(22)
           move 19  to   wk-temp(23)
           move 11  to   wk-temp(24)
           move 12  to   wk-temp(25)
           move 05  to   wk-temp(26)
           move -2  to   wk-temp(27)
           move -1  to   wk-temp(28)
           move  0  to   wk-temp(29)
           move  6  to   wk-temp(30)
           .
       a-inicializa-z.
           exit.


      ******************************************************************
      *   Procedimento Principal
      ******************************************************************
       b-processa section.
       b-processa-a.
           display "Algoritmo: "
           display "bc - Bubble Sort Crescente"
           display "bd - Bubble Sort Decrescente"
           display "ic - Insert Sort Crescente"
           accept wk-algoritmo

           evaluate   wk-algoritmo
             when "bc"
                perform ba-bubble-sort-cresc

             when "bd"
                perform bb-bubble-sort-decresc

             when "ic"
                perform bc-insert-sort-cresc

             when other
                display "Opcao Invalida"

           end-evaluate

           perform bz-relatorio
           .
       b-processa-z.
           exit.

      ******************************************************************
      *   Ordena por Bubble Sort - Crescente
      ******************************************************************
       ba-bubble-sort-cresc section.
       ba-bubble-sort-cresc-a.


           perform until wk-nao-trocou
               set wk-nao-trocou   to   true

               perform varying wk-ind from 1 by 1 until wk-ind = 30
                if wk-temp(wk-ind) > wk-temp(wk-ind + 1) then

                   move wk-temp(wk-ind)      to wk-temp-aux
                   move wk-temp(wk-ind + 1)  to wk-temp(wk-ind)
                   move wk-temp-aux          to wk-temp(wk-ind + 1)
                   set wk-trocou             to true
               end-perform

           end-perform

           .
       ba-bubble-sort-cresc-z.
           exit.

      ******************************************************************
      *   Ordena por Bubble Sort - Decrescente
      ******************************************************************
       bb-bubble-sort-decresc section.
       bb-bubble-sort-decresc-a.


           perform until wk-nao-trocou
               set wk-nao-trocou   to   true

               perform varying wk-ind from 1 by 1 until wk-ind = 30
                if wk-temp(wk-ind) < wk-temp(wk-ind + 1) then

                   move wk-temp(wk-ind)      to wk-temp-aux
                   move wk-temp(wk-ind + 1)  to wk-temp(wk-ind)
                   move wk-temp-aux          to wk-temp(wk-ind + 1)
                   set wk-trocou             to true
               end-perform

           end-perform

           .
       bb-bubble-sort-decresc-z.
           exit.


      ******************************************************************
      *   Ordena por Insert Sort - Crescente
      ******************************************************************
       bc-insert-sort-cresc section.
       bc-insert-sort-cresc-a.
           continue
           .
       bc-insert-sort-cresc-z.
           exit.


      ******************************************************************
      *   Relatorio
      ******************************************************************
       bz-relatorio section.
       bz-relatorio-a.
           perform varying wk-ind from 1 by 1 until wk-ind > 30
               display wk-ind
           end-perform
           .
       bz-relatorio-z.
           exit.


      ******************************************************************
      *   Procedimento de Finaliazaçao
      ******************************************************************
       z-finaliza section.
       z-finaliza-a.
           stop Run.
           .
       z-finaliza-z.
           exit.


