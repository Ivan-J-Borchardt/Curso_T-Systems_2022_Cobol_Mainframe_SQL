      *Divisao de identificacao
       identification division.
       program-id. "Lista6E3".
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
       01  wk-numeros-rand occurs 200.
           05 wk-num                       pic 9(02).

       77  wk-tam-vet                      pic 9(03) value 200.


       01  wk-acumuladores.
           05  wk-cont-maior-5             pic 9(03) value 0.
           05  wk-cont-mult-3              pic 9(03) value 0.

       01  wk-auxiliares.
           05 wk-aux                       pic 9(02).
           05 wk-resultado                 pic 9(02).
           05 wk-resto                     pic 9(02).

       77  wk-ind                          pic 9(03).

       77  wk-troca                        pic x(01) value "s".
           88 wk-trocou                    value "s".
           88 wk-nao-trocou                value "n".


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

           perform ba-gera-num-rand
           perform bb-sort-num-rand
           perform bc-conta-numeros


           .
       b-processa-z.
           exit.

      ******************************************************************
      *    Gerando numeros randomicos
      ******************************************************************
       ba-gera-num-rand section.
       ba-gera-num-rand-a.

      *    Gerando numeros randomicos
           perform varying wk-ind from 1 by 1 until wk-ind > wk-tam-vet
               compute wk-num(wk-ind) = function random() * 11
           end-perform
           .
       ba-gera-num-rand-z.
           exit.

      ******************************************************************
      *    Ordenando a sequencia numerica em ordem crescente
      ******************************************************************
       bb-sort-num-rand section.
       bb-sort-num-rand-a.

           perform until wk-nao-trocou
               set wk-nao-trocou to true

               perform varying wk-ind from 1 by 1
                                      until wk-ind > (wk-tam-vet - 1)
                  if wk-num(wk-ind) > wk-num(wk-ind + 1) then
                      move wk-num(wk-ind)     to    wk-aux
                      move wk-num(wk-ind + 1) to    wk-num(wk-ind)
                      move wk-aux             to    wk-num(wk-ind + 1)
                      set  wk-trocou          to    true
                  end-if
               end-perform
           end-perform
           .
       bb-sort-num-rand-z.
           exit.

      ******************************************************************
      *    Contando numeros multiplos de 3 e maiores que 5
      ******************************************************************
       bc-conta-numeros section.
       bc-conta-numeros-a.

           perform varying wk-ind from 1 by 1 until wk-ind > wk-tam-vet

      *        conta numeros maiores que 5
               if wk-num(wk-ind) > 5 then
                  add 1 to  wk-cont-maior-5
               end-if

      *        conta numeros multiplos de 3
               divide wk-num(wk-ind) by 3
                                 giving wk-resultado
                              remainder wk-resto

               if wk-resto equal 0 then
                  add 1 to  wk-cont-mult-3
               end-if

           end-perform
           .
       bc-conta-numeros-z.
           exit.


      ******************************************************************
      *   Procedimento de Finaliazaçao
      ******************************************************************
       z-finaliza section.
       z-finaliza-a.

      *    Exibindo Relatorio
           display "------------- Relatorio ----------------"

           perform varying wk-ind from 1 by 1 until wk-ind > wk-tam-vet
               display wk-num(wk-ind)
           end-perform

           display "Qtd. de num. Multiplos de 3: " wk-cont-mult-3
           display "Qtd. de num. maiores que  5: " wk-cont-maior-5



           .
       z-finaliza-z.
           exit.



