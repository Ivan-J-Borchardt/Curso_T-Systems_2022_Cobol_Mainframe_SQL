      *                             "x" != "X"
           compute wk-ascii = function ord("X").

           display "wk-ascii " wk-ascii

           move function char(91)   to   wk-char.

           display "wk-char " wk-char

           perform  varying  wk-ind from 1 by 1 until wk-ind > 4999
               display "wk-texto parcial " wk-texto(wk-ind:1)
           end-perform
