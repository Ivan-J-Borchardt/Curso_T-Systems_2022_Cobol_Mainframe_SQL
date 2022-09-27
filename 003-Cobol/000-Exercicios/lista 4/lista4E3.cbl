      *Divisao de identificacao
       identification division.
       program-id. "Lista4E3".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 27/09/2022.
       date-compiled. 27/09/2022.


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

      *Variavel alfanumerica de 25 caracteres
       77  wk-nome                          pic x(35).
       77  wk-nota1                         pic 9(02)V99.
       77  wk-nota2                         pic 9(02)V99.
       77  wk-media                         pic 9(02)V99.




       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


           display "Nome   : "
           accept wk-nome

           display "Nota 1 : "
           accept wk-nota1

           display "Nota 2 : "
           accept wk-nota2


           compute wk-media = (wk-nota1 + wk-nota2)/2

           if wk-media >= 7 then
               display "O aluno: "  wk-nome " foi Aprovado com media: "
                        wk-media
           else
               display "O aluno: "  wk-nome " foi Reprovado com media: "
                        wk-media
           end-if




	   stop run.

