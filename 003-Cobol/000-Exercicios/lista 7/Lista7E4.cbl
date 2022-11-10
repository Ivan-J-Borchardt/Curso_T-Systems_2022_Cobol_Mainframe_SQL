      *Divisao de identificacao
       identification division.
       program-id. "Lista7E4".
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
           05  wk-temp                      pic s9(02)V99 values -99,99.

       77  wk-tam-temp                      pic 9(02) value 30.

       01  wk-aux.
           05  wk-acc-temp                  pic s9(05)v99 value 0.
           05  wk-temp-media                pic S9(05)v99 value 0.
           05  wk-qtd-temp                  pic  9(02)    value 0.
           05  wk-consistencia              pic  x(01)    value space.
               88  wk-dados-consistentes    value "c".
               88  wk-dados-inconsistentes  value "i".
IJB-Q2     05  wk-temp-media-dis            pic -99999,99.

       01  wk-indices.
           05  wk-ind                       pic 9(02) value 0.

       01  wk-var-tela-geral.
           05  wk-menu                      pic x(01) value space.
               88 wk-sair                   value "X" "x" "S" "s".

       01  wk-var-tela-consulta.
           05  wk-dia                       pic 9(02) value 0.
IJB-Q2*    05  wk-msn                       pic x(42) value space.
IJB-Q2     05  wk-msn                       pic x(45) value space.


       linkage section.


       screen section.

      *         0    1    1    2    2    3    3    4    4    5    5    6
      *         5    0    5    0    5    0    5    0    5    0    5    0
      *     ----+----+----+----+----+----+----+----+----+----+----+----+

       01  sc-tela-consulta-temp.
           05 blank screen.
           05 line 01 col 01 value
           " L7E4 - Temperatura Historica                             ".
           05 line 02 col 01 value
           "                                             [ ] Sair     ".
           05 line 03 col 01 value
           "                Consulta Temperatura                      ".
           05 line 04 col 01 value
           "              -------------------------                   ".
           05 line 05 col 01 value
           "                                                          ".
           05 line 06 col 01 value
           "    Dia :                                                 ".
           05 line 07 col 01 value
           "                                                          ".
           05 line 08 col 01 value
           "                                                          ".
           05 line 09 col 01 value
           "                                                          ".
           05 line 10 col 01 value
IJB-Q2*    "    [                                           ]         ".
IJB-Q2     "    [                                              ]      ".


           05 sc-menu          line 02   col 47   pic x(01)
           using wk-menu foreground-color 12.

           05 sc-dia           line 06   col 10   pic 9(02)
           using wk-dia  foreground-color 2.

IJB-Q2*    05 sc-msn           line 10   col 06   pic x(42)
IJB-Q2     05 sc-msn           line 10   col 06   pic x(45)
           using wk-msn  foreground-color 2.


       01  sc-tela-finaliza.
           05 blank screen.
           05 line 01 col 01 value
           " L7E4 - Temperatura Historica                             ".
           05 line 02 col 01 value
           "                                                          ".
           05 line 10 col 01 value
           " Finalizando Programa...                                  ".
           05 sc-menu          line 25   col 01   pic x(01)
           using wk-menu foreground-color 12.




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
IJB-Q1*    move 30  to   wk-temp(13)
IJB-Q1*    move 28  to   wk-temp(13)
           move 30  to   wk-temp(13)
           move 28  to   wk-temp(13)
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

           perform ba-calcula-media
           perform bb-consulta-temp  until wk-sair

           .
       b-processa-z.
           exit.

      ******************************************************************
      *   Calcula temperatura media historica
      ******************************************************************
       ba-calcula-media section.
       ba-calcula-media-a.

IJB-Q1*    perform varying wk-ind from 1 by 1 until wk-ind = wk-tam-temp
           perform varying wk-ind from 1 by 1 until wk-ind > wk-tam-temp
                                      or wk-temp(wk-ind) = -99,99

               add wk-temp(wk-ind) to wk-acc-temp
               add 1               to wk-qtd-temp

           end-perform

           compute wk-temp-media = wk-acc-temp / wk-qtd-temp

           .
       ba-calcula-media-z.
           exit.

      ******************************************************************
      *   Consulta temperatura
      ******************************************************************
       bb-consulta-temp section.
       bb-consulta-temp-a.

           display sc-tela-consulta-temp
           accept  sc-tela-consulta-temp

      *    Consistencia do dia informado pelo usuario
           perform  bba-consiste-dados

           move   wk-temp-media     to        wk-temp-media-dis
      *    Testa temperatura do dia contra a media historica
           if wk-dados-consistentes then
               move space to wk-msn
               if wk-temp(wk-dia) > wk-temp-media then
                  string  "O dia "            delimited by size
                           wk-dia             delimited by size
                          " estava mais "     delimited by size
                          "quente q a media " delimited by size
IJB-Q2                    wk-temp-media-dis        delimited by size
                      into wk-msn
                   end-string
               else
IJB-Q1*            if wk-temp(wk-dia) > wk-temp-media then
                   if wk-temp(wk-dia) < wk-temp-media then

                       string  "O dia "           delimited by size
                                wk-dia            delimited by size
                               " estava mais "    delimited by size
                               "frio q a media "  delimited by size
IJB-Q2                          wk-temp-media-dis      delimited by size

                           into wk-msn
                       end-string
                   else
                       string  "A temperatura do dia "
                                                 delimited by size
                               wk-dia            delimited by size
                           " estava na media "   delimited by size
IJB-Q2                      wk-temp-media-dis         delimited by size

                           into wk-msn
                       end-string

                   end-if
               end-if
           end-if



           .
       bb-consulta-temp-z.
           exit.


      ******************************************************************
      *   Consistencia tela consulta temperatura
      ******************************************************************
       bba-consiste-dados section.
       bba-consiste-dados-a.
           set wk-dados-consistentes               to true.

      *    Consistencia do dia informado pelo usuario
           if wk-dia < 1
           or wk-dia > wk-qtd-temp then
               move "Dia fora do intervalo valido"  to wk-msn
               set wk-dados-inconsistentes          to true
           end-if

           .
       bb-consiste-dados-z.
           exit.



      ******************************************************************
      *   Procedimento de Finaliazaçao
      ******************************************************************
       z-finaliza section.
       z-finaliza-a.
           display sc-tela-finaliza
           accept sc-tela-finaliza
           Stop Run.
           .
       z-finaliza-z.
           exit.


