      $set sourceformat"free"
      *>Divisao de identificacao
       identification division.
       program-id. "Lista7E7".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 28/10/2022.
       date-compiled. 28/10/2022.


      *>Divisao de configuracao do ambiente
       environment division.
       configuration section.
	    special-names. decimal-point is comma.

      *>------- Declaracao de recursos externos
       input-output section.
       file-control.
       i-o-control.



      *>Declaracao de variaveis
       data division.
       file section.


      *>Variaveis do programa
       working-storage section.

      *>   Vetores/Tabelas
       01  wk-estados occurs 27.
           05 wk-uf                         pic x(02).
           05 wk-estado                     pic x(25).
           05 wk-capital                    pic x(25).

       01  wk-jogadores occurs 4.
           05  wk-jogador                   pic x(15) value space.
           05  wk-pontos-jog                pic 9(02) value 0.

       01  wk-indices.
           05  wk-ind-jog                   pic 9(02) value 0.
           05  wk-ind-est                   pic 9(02) value 0.


      *>    variaveis auxiliares e logica geral

       01  wk-consistencias                 pic x(01) value space.
           88  wk-dados-validos             value "V".
           88  wk-dados-invalidos           value "I".

       77  wk-rodada                        pic 9(02) value 0.


      *>    variaveis de tela
       01  wk-tela-geral.
           05  wk-menu                      pic x(01) value space.
               88 wk-sair                   value "X" "x" "S" "s".

           05  wk-msn                       pic x(42) value space.


       01  wk-tela-principal.
           05  wk-admissao-jog              pic x(01) value space.
               88 wk-admitir-jog            value "X" "x" "S" "s".

           05  wk-jogo                      pic x(01) value space.
               88 wk-jogar                  value "X" "x" "S" "s".

       01  wk-tela-admissao.
           05  wk-num-jogador               pic 9(01) value zero.
           05  wk-nome-jogador              pic x(35) value space.

       01  wk-tela-jogo.
           05  wk-estado-dis                pic x(25) value space.
           05  wk-capital-dis               pic x(25) value space.

       linkage section.


       screen section.

      *>                                    0    1    1    2    2    3    3    4    4    5    5    6    6    7    7    8
      *>                                    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0
      *>                                ----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+

       01  sc-tela-principal.
           05 blank screen.
           05 line 01 col 01 value     " L7E7 - Jogo das Capitais                                                       ".
           05 line 02 col 01 value     "                                                                   [ ] Sair     ".
           05 line 03 col 01 value     "                           Menu Jogo das Capitais                               ".
           05 line 04 col 01 value     "                         --------------------------                             ".
           05 line 05 col 01 value     "                                                                                ".
           05 line 06 col 01 value     "   [ ] Admitir Jogadores                                                        ".
           05 line 07 col 01 value     "   [ ] Jogar                                                                    ".
           05 line 08 col 01 value     "                                                                                ".
           05 line 09 col 01 value     "                                                                                ".
           05 line 24 col 01 value     "    [                                                                      ]    ".

           05 sc-menu          line 02   col 69   pic x(01)
           using wk-menu foreground-color 12.

           05 sc-admicao-jog   line 06   col 05   pic x(01)
           using wk-admissao-jog  foreground-color 2.

           05 sc-jogo          line 07   col 05   pic x(01)
           using wk-jogo  foreground-color 2.

           05 sc-msn           line 24   col 06   pic x(42)
           from wk-msn  foreground-color 2.



      *>                                    0    1    1    2    2    3    3    4    4    5    5    6    6    7    7    8
      *>                                    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0
      *>                                ----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+

       01  sc-tela-admissao-jogador.
           05 blank screen.
           05 line 01 col 01 value     " L7E7 - Jogo das Capitais                                                       ".
           05 line 02 col 01 value     "                                                                   [ ] Sair     ".
           05 line 03 col 01 value     "                            Admissao de Jogador                                 ".
           05 line 04 col 01 value     "                         -------------------------                              ".
           05 line 05 col 01 value     "                                                                                ".
           05 line 06 col 01 value     "   Jogador                                                                      ".
           05 line 07 col 01 value     "   Nome:                                                                        ".
           05 line 08 col 01 value     "                                                                                ".
           05 line 09 col 01 value     "                                                                                ".
           05 line 24 col 01 value     "    [                                                                      ]    ".

           05 sc-menu          line 02   col 69   pic x(01)
           using wk-menu foreground-color 12.

           05 sc-num-jogador   line 06   col 12   pic 9(02)
           from wk-num-jogador  foreground-color 2.

           05 sc-nome-jogador  line 07   col 10   pic x(35)
           using wk-nome-jogador  foreground-color 2.

           05 sc-msn           line 24   col 06   pic x(42)
           from wk-msn  foreground-color 2.


      *>                                    0    1    1    2    2    3    3    4    4    5    5    6    6    7    7    8
      *>                                    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0
      *>                                ----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+

       01  sc-tela-jogo.
           05 blank screen.
           05 line 01 col 01 value     " L7E7 - Jogo das Capitais                                                       ".
           05 line 02 col 01 value     "                                                                   [ ] Sair     ".
           05 line 03 col 01 value     "                                Boa Sorte!                                      ".
           05 line 04 col 01 value     "                         -------------------------                              ".
           05 line 05 col 01 value     "                         Rodada:                                                ".
           05 line 06 col 01 value     "   Jogador:                                                                      ".
           05 line 07 col 01 value     "   Nome:                                                                        ".
           05 line 08 col 01 value     "                                                                                ".
           05 line 09 col 01 value     "   Estado:                                                                      ".
           05 line 10 col 01 value     "   Capital:                                                                     ".

           05 line 24 col 01 value     "    [                                                                      ]    ".

           05 sc-menu          line 02   col 69   pic x(01)
           using wk-menu foreground-color 12.

           05 sc-rodada        line 05   col 34   pic 9(02)
           from wk-rodada      foreground-color 2.

           05 sc-num-jogador   line 06   col 13   pic 9(02)
           from wk-num-jogador  foreground-color 2.

           05 sc-nome-jogador  line 07   col 10   pic x(35)
           from wk-nome-jogador  foreground-color 2.

           05 sc-estado        line 09   col 12   pic x(25)
           from wk-estado-dis   foreground-color 2.

           05 sc-capital       line 10   col 13   pic x(25)
           using wk-capital-dis   foreground-color 2.

           05 sc-msn           line 24   col 06   pic x(42)
           from wk-msn  foreground-color 2.




      *>Declaracao do corpo do programa
       procedure division.

           perform a-inicializa.
           perform b-processa until wk-sair.
           perform z-finaliza.



      *>*****************************************************************
      *>   Procedimento de Incializaçao
      *>*****************************************************************
       a-inicializa section.
       a-inicializa-a.
           move "Acre"             to  wk-estado(1)
           move "Rio Branco"       to  wk-capital(1)
           move "AC"               to  wk-uf(1)

           move "Alagoas"          to  wk-estado(2)
           move "Maceio"           to  wk-capital(2)
           move "AL"               to  wk-uf(2)

           move "Amapa"            to  wk-estado(3)
           move "Macapa"           to  wk-capital(3)
           move "AP"               to  wk-uf(3)

           move "Amazonas"         to  wk-estado(4)
           move "Manaus"           to  wk-capital(4)
           move "AM"               to  wk-uf(4)

           move "Bahia"            to  wk-estado(5)
           move "Salvador"         to  wk-capital(5)
           move "BA"               to  wk-uf(5)

           move "Ceara"            to  wk-estado(6)
           move "Fortaleza"        to  wk-capital(6)
           move "CE"               to  wk-uf(6)

           move "Distrito Federal" to  wk-estado(7)
           move "Brasilia"         to  wk-capital(7)
           move "DF"               to  wk-uf(7)

           move "Espírito Santo"   to  wk-estado(8)
           move "Vitoria"          to  wk-capital(8)
           move "ES"               to  wk-uf(8)

           move "Goias"            to  wk-estado(9)
           move "Goiania"          to  wk-capital(9)
           move "GO"               to  wk-uf(9)

           move "Maranhao"         to  wk-estado(10)
           move "Sao Luís"         to  wk-capital(10)
           move "MA"               to  wk-uf(10)

           move "Mato Grosso"      to  wk-estado(11)
           move "Cuiaba"           to  wk-capital(11)
           move "MT"               to  wk-uf(11)

           move "Mato Grosso do Sul"  to  wk-estado(12)
           move "Campo Grande"        to  wk-capital(12)
           move "MS"                  to  wk-uf(12)

           move "Minas Gerais"     to  wk-estado(13)
           move "Belo Horizonte"   to  wk-capital(13)
           move "MG"               to  wk-uf(13)

           move "Para"             to  wk-estado(14)
           move "Belem"            to  wk-capital(14)
           move "PA"               to  wk-uf(14)

           move "Paraíba"          to  wk-estado(15)
           move "Joao Pessoa"      to  wk-capital(15)
           move "PB"               to  wk-uf(15)

           move "Parana"           to  wk-estado(16)
           move "Curitiba"         to  wk-capital(16)
           move "PR"               to  wk-uf(16)

           move "Pernambuco"       to  wk-estado(17)
           move "Recife"           to  wk-capital(17)
           move "PE"               to  wk-uf(17)

           move "Piauí"            to  wk-estado(18)
           move "Teresina"         to  wk-capital(18)
           move "PI"               to  wk-uf(18)

           move "Rio de Janeiro"   to  wk-estado(19)
           move "Rio de Janeiro"   to  wk-capital(19)
           move "RJ"               to  wk-uf(19)

           move "Rio Grande do Norte"  to  wk-estado(20)
           move "Natal"                to  wk-capital(20)
           move "RN"                   to  wk-uf(20)

           move "Rio Grande do Sul"    to  wk-estado(21)
           move "Porto Alegre"         to  wk-capital(21)
           move "RS"                   to  wk-uf(21)

           move "Rondônia"         to  wk-estado(22)
           move "Porto Velho"      to  wk-capital(22)
           move "RO"               to  wk-uf(22)

           move "Roraima"          to  wk-estado(23)
           move "Boa Vista"        to  wk-capital(23)
           move "RR"               to  wk-uf(23)

           move "Santa Catarina"   to  wk-estado(24)
           move "Florianópolis"    to  wk-capital(24)
           move "SC"               to  wk-uf(24)

           move "São Paulo"        to  wk-estado(25)
           move "São Paulo"        to  wk-capital(25)
           move "SP"               to  wk-uf(25)

           move "Sergipe"          to  wk-estado(26)
           move "Aracaju"          to  wk-capital(26)
           move "SE"               to  wk-uf(26)

           move "Tocantins"        to  wk-estado(27)
           move "Palmas"           to  wk-capital(27)
           move "TO"               to  wk-uf(27)

           .
       a-inicializa-z.
           exit.


      *>*****************************************************************
      *>   Processamento principal
      *>*****************************************************************
       b-processa section.
       b-processa-a.

           initialize  wk-tela-geral
           initialize  wk-tela-principal

           display sc-tela-principal
           accept sc-tela-principal


           if wk-admitir-jog then
               add 1 to wk-num-jogador
               if wk-num-jogador > 4 then
                   move "Limite de 4 jogadores alcancado!"  to wk-msn
                   display sc-tela-principal
                   accept sc-tela-principal
               else
      *>           initialize wk-tela-admissao
                   move space to wk-nome-jogador
                   set wk-dados-invalidos to true
                   perform ba-admissao-jogador until wk-dados-validos or wk-sair
               end-if
           end-if

           if wk-jogar then
              add 1 to wk-rodada
              perform bb-jogar varying wk-ind-jog from 1 by 1
                                 until  wk-ind-jog > 4
                                    or  wk-jogador(wk-ind-jog) = space
           end-if



           .
       a-processa-z.
           exit.

      *>*****************************************************************
      *>   Admissao Jogador - O jogo admite de 1 ate 4 jogadores
      *>*****************************************************************
       ba-admissao-jogador section.
       ba-admissao-jogador-a.


           display sc-tela-admissao-jogador
           accept sc-tela-admissao-jogador

      *>   Validando nome Jogador
           if wk-nome-jogador not equal space then
               move wk-nome-jogador to wk-jogador(wk-num-jogador)
               move space           to wk-nome-jogador  *>limpa campo da tela
               set wk-dados-validos to true
           else
               move "Preenchimento Obrigatorio: Nome Jogador"  to wk-msn
           end-if


           .
       ba-admissao-jogador-z.
           exit.


      *>*****************************************************************
      *>   Jogar
      *>*****************************************************************
       bb-jogar section.
       bb-jogar-a.

      *>   Limpa campos da tela
           initialize  wk-tela-jogo
           initialize  wk-tela-admissao
           initialize  wk-tela-geral

      *>   seleciona jogador
           move wk-ind-jog             to wk-num-jogador
           move wk-jogador(wk-ind-jog) to wk-nome-jogador

      *>   sorteia estado
           compute wk-ind-est = function random() * 27
           move wk-estado(wk-ind-est)  to wk-estado-dis

      *>   Exibir Jogador e pergunta na tela  e coletar resposta
           display sc-tela-jogo
           accept sc-tela-jogo

      *>   Verificar resposta e exibir resultado
           if wk-capital-dis = wk-capital(wk-ind-est) then
               add 1 to wk-pontos-jog(wk-ind-jog)
               move "Parabens, resposta certa!"  to wk-msn
           else
               move "Errado! estude mais..."     to wk-msn
           end-if
           display sc-tela-jogo
           accept sc-tela-jogo


           .
       bb-jogar-z.
           exit.



      *>*****************************************************************
      *>   Procedimentos de finalizacao
      *>*****************************************************************
       z-finaliza section.
       z-finaliza-a.
           stop run.
           .
       z-finaliza-z.
           exit.


