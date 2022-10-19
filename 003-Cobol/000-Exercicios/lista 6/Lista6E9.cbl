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

       01  wk-temperaturas.
           05  wk-temp                    pic S9(03)v99.
           05  wk-temp-c                  pic S9(03)v99.
           05  wk-temp-f                  pic S9(03)v99.
           05  wk-temp-k                  pic S9(03)v99.

       01  wk-temp-display.
           05  wk-temp-c-dis              pic ----9,99.
           05  wk-temp-f-dis              pic ----9,99.
           05  wk-temp-k-dis              pic ----9,99.




       77  wk-menu                        pic x(01).
           88 wk-sair                     value "s".

       77  wk-escala                      pic x(01).
           88 wk-celsius                  value "c".
           88 wk-farenheit                value "f".
           88 wk-kelvin                   value "k".



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

               perform ba-tela

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


                 when other
                   display "Opcao invalida..."
               end-evaluate

               if  wk-celsius
               or  wk-farenheit
               or  wk-kelvin   then
                  perform bz-relatorio
               end-if


               display "Deseja continuar? s p/Sair c p/ Continuar "
               accept wk-menu

           end-perform

           .
       b-processa-z.
           exit.

      ******************************************************************
      *    Interface com o  usuario
      ******************************************************************
       ba-tela section.
       ba-tela-a.

            display erase
            display "Escala "
            display "     `C`elsius"
            display "     `F`arenheit"
            display "     `K`elvin "
            accept wk-escala

            display "Temperatura: "
            accept wk-temp

            move function lower-case(wk-escala)  to  wk-escala

           .
       ba-tela-z.
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

            move wk-temp-c    to     wk-temp-c-dis
            move wk-temp-f    to     wk-temp-f-dis
            move wk-temp-k    to     wk-temp-k-dis

            display erase
            display "------ Relatorio -------"
            display "Celsius     : " wk-temp-c-dis
            display "Farenheit   : " wk-temp-f-dis
            display "Kelvin      : " wk-temp-k-dis

           .
       bz-relatorio-z.
           exit.



      ******************************************************************
      *   Procedimento de Finaliazaçao
      ******************************************************************
       z-finaliza section.
       z-finaliza-a.
           display "Finalizando Programa..."
           .
       z-finaliza-z.
           exit.





