      *Divisao de identificacao
       identification division.
       program-id. "Lista7E3".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 14/10/2022.
       date-compiled. 14/10/2022.


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
       01  wk-funcionarios occurs 5.
           05  wk-nome                      pic x(35) values spaces.
           05  wk-sexo                      pic x(01) value "w".
           05  wk-salario                   pic 9(065)v99.

       01  wk-salario-rel                   pic zzzz9,99.





       01  wk-indices.
           05  wk-ind                       pic 9(02) value 0.
           05  wk-ind-cad                   pic 9(02) value 0.


       77  wk-menu                          pic x(01).
           88 wk-cadatrar                   value "c".
           88 wk-relatorio                  value "r".
           88 wk-sair                       value "s".



       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           perform until wk-sair
              display erase
              display "--- Tela Principal ---"
              display "c - Cadastro"
              display "r - Relatorio"
              display "s - Sair"
              accept wk-menu


              move function lower-case(wk-menu)  to  wk-menu


              evaluate wk-menu
                 when "c"
                    perform cadastro

                 when "r"
                    perform relatorio

                 when "s"
                    display "Encerrando programa..."
                 when other
                    display "Opcao Invalida!"
                    accept wk-menu
              end-evaluate

           end-perform




	   stop run.

      ******************************************************************
      *  Cadastro de funcionarios
      ******************************************************************
       cadastro section.
       cadastro-a.
           add 1 to wk-ind-cad

           if wk-ind-cad <= 5 then
               display erase
               display "--- Cadastro De Funcionario ---"
               display "Nome: "
               accept wk-nome(wk-ind-cad)

               display "Sexo (f/m):"
               accept wk-sexo(wk-ind-cad)

               display "Salario:"
               accept wk-salario(wk-ind-cad)
           else
               display "Limite de Qdt de Funcionarios Alcancado!"
               accept wk-menu
           end-if
           .
       cadastro-z.
           exit.


      ******************************************************************
      *  Relatorio Mulheres com salario > 5K
      ******************************************************************
       relatorio section.
       relatorio-a.
           display erase
           display "--- Relatorio ---"
           perform varying wk-ind  from 1 by 1 until wk-ind > 5
                                            or wk-sexo(wk-ind) = "w"

              if wk-sexo(wk-ind) = "f" then
                 if wk-salario(wk-ind) > 5000,00 then

                     move wk-salario(wk-ind) to wk-salario-rel

                     display "Nome: " wk-nome(wk-ind)
                             " Sexo: " wk-sexo(wk-ind)
                             " Salario: " wk-salario-rel
                 end-if
              end-if

           end-perform
           accept wk-menu
           .
       relatorio-z.
           exit.




