      *Divisao de identificacao
       identification division.
       program-id. "Lista6E5".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 29/09/2022.
       date-compiled. 29/09/2022.


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
       77  wk-preco                        pic 9(03)v99.
       77  wk-maior-preco                  pic 9(03)v99 value 0.
       77  wk-menor-preco                  pic 9(03)v99 value 999,99.

       77  wk-maior-preco-z                pic zz9,99.
       77  wk-menor-preco-z                pic zz9,99.
      *
       77  wk-menu                         pic x(01).
           88  wk-sair                     value "s".



       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           perform until wk-sair
           
               display "Informe o Preco do Produto"
               accept wk-preco

      *        Descobrindo o menor preco
               if wk-preco > wk-maior-preco then
                   move wk-preco    to    wk-maior-preco
               end-if

      *        Descobrindo o maior preco
               if wk-preco < wk-menor-preco then
                   move wk-preco    to    wk-menor-preco
               end-if


               display "'S'air 'C'ontinuar"
               accept wk-menu
               move function lower-case(wk-menu)   to   wk-menu
               display erase
           end-perform

      *    Relatorio final
           move  wk-maior-preco     to    wk-maior-preco-z
           move  wk-menor-preco     to    wk-menor-preco-z
           display "Menor preco: R$" wk-menor-preco-z
           display "Maior preco: R$" wk-maior-preco-z

	   stop run.





