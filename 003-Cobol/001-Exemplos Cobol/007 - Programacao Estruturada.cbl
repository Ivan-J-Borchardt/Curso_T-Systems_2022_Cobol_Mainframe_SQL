      *Divisao de identificacao
       identification division.
       program-id. "ProgramacaoEstruturada".
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
       01  wk-numbers.
           05  wk-num1                    pic x(06).


       77  wk-menu                        pic x(01).

       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.

           display "Passou Aqui 1" .
           perform  menu.

           display "Passou Aqui 2"

           stop run.


       menu section.
       menu-a.
           display "Menu"
           accept wk-menu
           .
       menu-z.
           exit.


           
