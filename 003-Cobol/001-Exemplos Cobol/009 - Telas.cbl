      *Divisao de identificacao
       identification division.
       program-id. "TrabalhandoComTelas".
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

       01 wk-tela.
          05  wk-sair                        pic x(01).
          05  wk-cad-aluno                   pic x(01).
          05  wk-cad-nota                    pic x(01).
          05  wk-cons-cad                    pic x(01).
          05  wk-nome                        pic x(25).

       77 temp                               pic x(01).

       linkage section.

      *         0    1    1    2    2    3    3    4    4    5    5    6
      *         5    0    5    0    5    0    5    0    5    0    5    0
      *     ----+----+----+----+----+----+----+----+----+----+----+----+



       screen section.

       01  sc-tela.
           05 blank screen.

           05 line 01 col 01 value
           "                                                          ".
           05 line 02 col 01 value
           "                                                  [ ]Sair ".
           05 line 03 col 01 value
           "    MENU                                                  ".
           05 line 04 col 01 value
           "      [ ]Cadastro de Alunos                               ".
           05 line 05 col 01 value
           "      [ ]Cadastro de Notas                                ".
           05 line 06 col 01 value
           "      [ ]Consulta Cadastro                                ".
           05 line 09 col 01 value
           "   Nome:                                                  ".


           05 sc-sair      line 02   col 52   pic x(01)
           using wk-sair foreground-color 12.

           05 sc-cad-aluno line 04   col 08   pic x(01)
           using wk-cad-aluno  foreground-color 15.

           05 sc-cad-nota  line 05   col 08   pic x(01)
           using wk-cad-nota  foreground-color 15.

           05 sc-cons-cad  line 06   col 08   pic x(01)
           using wk-cons-cad  foreground-color 15.

           05 sc-cons-cad  line 09   col 10   pic x(29)
           using wk-nome   foreground-color 15.





      *Declaracao do corpo do programa
       procedure division.


           perform a-inicializa.
           perform b-processa.
           perform z-finaliza.


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

           perform until wk-sair = "X"
               move space  to  wk-cad-aluno
               move space  to  wk-cad-nota
               move space  to  wk-cons-cad
               move space  to  wk-nome

               display sc-tela
               accept  sc-tela

               if wk-cad-aluno = "X" then
                  display erase
                  display "Cadastro de alunos"
                  accept temp
               end-if

               if wk-cad-nota = "X" then
                  display erase
                  display "Cadastro de notas"
                  accept temp
               end-if

               if wk-cons-cad = "X" then
                  display erase
                  display "Consulta de cadastro"
                  accept temp
               end-if


           end-perform

           .
       b-processa-z.
           exit.

      ******************************************************************
      *   Procedimento de Finaliazaçao
      ******************************************************************
       z-finaliza section.
       z-finaliza-a.
           display erase
           display "Finalizando Programa..."

           stop run.
           .
       z-finaliza-z.
           exit.



