      *Divisao de identificacao
       identification division.
       program-id. "Lista6E9".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 19/10/2022.
       date-compiled. 19/10/2022.


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

       77  wk-menu                        pic x(01).
           88 wk-sair                     value "x".




       linkage section.




       screen section.


      *         0    1    1    2    2    3    3    4    4    5    5    6
      *         5    0    5    0    5    0    5    0    5    0    5    0
      *     ----+----+----+----+----+----+----+----+----+----+----+----+

       01  sc-tela.
           05 blank screen.
           05 line 01 col 01 value
           " L6E101 - Cadastro de Taxas                               ".
           05 line 02 col 01 value
           "                                             [ ] Sair     ".
           05 line 03 col 01 value
           "                   Casa de Cambio                         ".
           05 line 04 col 01 value
           "              -------------------------                   ".
           05 line 05 col 01 value
           "                                                          ".
           05 line 06 col 01 value
           "    Real To Dolar       :                                 ".
           05 line 07 col 01 value
           "    Euro To Dolar       :                                 ".
           05 line 08 col 01 value
           "    Dolar Can. To Dolar :                                 ".
           05 line 09 col 01 value
           "    Libra To Dolar      :                                 ".
           05 line 10 col 01 value
           "    Dolar To Real       :                                 ".
           05 line 10 col 01 value
           "    Dolar To Euro       :                                 ".
           05 line 10 col 01 value
           "    Dolar To Dolar Can  :                                 ".
           05 line 10 col 01 value
           "    Dolar To Libra      :                                 ".



           05 sc-menu          line 02   col 47   pic x(01)
           using wk-menu foreground-color 12.

           05 sc-BRL-to-USD    line 08   col 26   pic x(01)
           using wk-escala foreground-color 12.






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
           continue.
           .
       a-inicializa-z.
           exit.


      ******************************************************************
      *   Procedimento Principal
      ******************************************************************
       b-processa section.
       b-processa-a.

           perform until wk-sair

               move space to   wk-escala
               move space to   wk-menu
               move zero  to   wk-temp

               display sc-tela
               accept sc-tela

               move function lower-case(wk-escala)  to  wk-escala

               evaluate wk-escala
                 when "c"
                    move  wk-temp     to   wk-temp-c
                    perform bb-converter-c-to-f
                    perform bb-converter-c-to-k

                 when "f"
                    move  wk-temp     to   wk-temp-f
                    perform bb-converter-f-to-c
                    perform bb-converter-f-to-k


                 when "k"
                    move  wk-temp     to   wk-temp-k
                    perform bb-converter-k-to-c
                    perform bb-converter-k-to-f

                 when " "
                    continue

                 when other
                   display "Opcao invalida..."
               end-evaluate

               if  wk-celsius
               or  wk-farenheit
               or  wk-kelvin   then
                  perform bz-relatorio
               end-if



           end-perform

           .
       b-processa-z.
           exit.


      ******************************************************************
      *    COnversao de Celsius para Fahrenheit
      ******************************************************************
       bb-converter-c-to-f section.
       bb-converter-c-to-f-a.
            compute wk-temp-f = (9 * wk-temp-c + 160)/5

           .
       bb-converter-c-to-f-z.
           exit.


      ******************************************************************
      *    COnversao de celsius para Kelvin
      ******************************************************************
       bb-converter-c-to-k section.
       bb-converter-c-to-k-a.
            compute wk-temp-k = wk-temp-c + 273,15
           .
       bb-converter-c-to-k-z.
           exit.

      ******************************************************************
      *    COnversao de Fahrenheit para celsius
      ******************************************************************
       bb-converter-f-to-c section.
       bb-converter-f-to-c-a.
           compute wk-temp-c = ((wk-temp-f * 5) - 160)/9
           .
       bb-converter-f-to-c-z.
           exit.

      ******************************************************************
      *    COnversao de Fahrenheit para kelvin
      ******************************************************************
       bb-converter-f-to-k section.
       bb-converter-f-to-k-a.
           compute wk-temp-k = ((wk-temp-f * 5) - 160)/9 + 273,15
           .
       bb-converter-f-to-k-z.
           exit.


      ******************************************************************
      *    COnversao de kelvin para celsius
      ******************************************************************
       bb-converter-k-to-c section.
       bb-converter-k-to-c-a.
           compute wk-temp-c = wk-temp-k  - 273,15
           .
       bb-converter-k-to-c-z.
           exit.



      ******************************************************************
      *    COnversao de kelvin para Fahrenheit
      ******************************************************************
       bb-converter-k-to-f section.
       bb-converter-k-to-f-a.
           compute wk-temp-f = (((wk-temp-k - 273,15) * 9) + 160)/5
           .
       bb-converter-k-to-f-z.
           exit.


      ******************************************************************
      *    Relatorio
      ******************************************************************
       bz-relatorio section.
       bz-relatorio-a.

            display sc-tela-relatorio
            accept sc-tela-relatorio
           .
       bz-relatorio-z.
           exit.



      ******************************************************************
      *   Procedimento de Finaliazaçao
      ******************************************************************
       z-finaliza section.
       z-finaliza-a.
           display sc-tela-finaliza
           accept sc-tela-finaliza
           .
       z-finaliza-z.
           exit.





