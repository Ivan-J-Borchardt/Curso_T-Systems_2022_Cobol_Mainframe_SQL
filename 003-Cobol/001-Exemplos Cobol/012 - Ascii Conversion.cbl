      *Comentario							coment
      *8-11AreaB							aaaaaaa
      *A---12
      *Divisao de identificacao
       identification division.
       program-id. "HelloWorld".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 20/09/2022.
       date-compiled. 20/09/2022.


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
       77  wk-ascii                    pic 9(03).

       77  wk-char                     pic x(1).

       77  wk-texto                    pic x(30)
           value "isso eh um texto...".


       linkage section.


       screen section.

      *  ---- ASCII  (Plataforma PC - Baixa Plataforma)
      *  ---- EBCDIC (Mainframe     - Alta Plataforma)



      *Declaracao do corpo do programa
       procedure division.
      *                             "x" != "X"
           compute wk-ascii = function ord("X").

           display "wk-ascii " wk-ascii

           move function char(91)   to   wk-char.

           display "wk-char " wk-char

           display "wk-texto parcial " wk-texto(13:1)





	   stop run.

