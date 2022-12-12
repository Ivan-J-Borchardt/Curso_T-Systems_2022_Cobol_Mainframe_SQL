      *Divisao de identificacao
       identification division.
       program-id. "Variaveis".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 03/10/2022.
       date-compiled. 03/10/2022.


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

      *Itens de grupo com seus subniveis
       01  wk-numbers.
           05  wk-num1                    pic x(06).
           05  wk-num2                    pic x(05).
           05  wk-resultado               pic s9(10)v999 value zeroes.
	   05  wk-resultado2		  pic 9(05).
	   05  wk-resto			  pic 9(02).
           05  wk-data-1.
               10  wk-dia-1               pic x(02) value "03".
               10  filler                 value "/".
               10  wk-mes-1               pic x(02) value "10".
               10  filler                 value "/".
               10  wk-ano-1               pic x(04) value "2022".

      *Constantes Intrinsecas
       77  wk-num                         pic 9(03) value 564.
       77  wk-num3                        pic 9(03) value zeroes.

       01  cont.
           05 wk-num4                     pic x(03) value high-value.
           05 wk-num4-red   redefines wk-num4.
              10 wk-num4-num              pic 9(03).

      *                                                 equivalente a FF FF FF Hexadecimal
       77  wk-num5                        pic x(03) value high-values.
       77  wk-num6                        pic x(03) value low-value.

      *                                                 equivalente a 00 00 00 Hexadecimal
       77  wk-num7                        pic x(03) value low-values.

       77  wk-nome                        pic x(04) value space.
       77  wk-nome2                       pic x(04) value spaces.


      *Compactaçao de variaveis numericas

       77  wk-idade                       pic s9(03) comp value 254.

       77  wk-temperatura                 pic s9(04)V99 comp-3.





      *variaveis avulsas
       77  wk-num-rand                    pic 9(02).
       77  wk-cont-jogadas                pic 9(02) value 2.


       77  wk-menu                        pic x(01).
           88  wk-sair                    value "s".

      *Constantes
       78  wk-pi                          value 3,1415.
       78  wk-lable-a                     value "Texto123".

       78  wk-polegada                    value 2,54.

       78  wk-saque                       value  "3054".
       78  wk-deposito                    value  "3055".
       78  wk-transferencia               value  "3056".

      *Uso de mascaras
      *Suprimindo zeros a esquerda e exibindo virgula
       01  wk-preco             pic  zzzzzzzzz9,99 value 100,00.

      *Suprimindo zeros a esquerda e sempre exibindo o sinal
       01  wk-preco2            pic  +++++++++9,99 value 200,00.

      *Suprimindo zeros a esquerda e exibindo o sinal se numero negativo
       01  wk-preco3            pic  ---------9,99 value -300,00.



       01  wk-preco4            pic -9.999.999.999,99.
       01  wk-preco5            pic -z.zzz.zzz.zz9,99.

       01  wk-cpf               pic 999.999.999/99.


      *casting (Conversao de texto para numero) usando redefines.
       01  wk-data.
           05  wk-data-formatada      pic  zz/zz/zzzz.
           05  wk-data-numerica    redefines wk-data-formatada.
               10 wk-dia              pic  9(02).
               10 filler              pic  x(01).
               10 wk-mes              pic  9(02).
               10 filler              pic  x(01).
               10 wk-ano              pic  9(04).

       01  wk-data-atual.
           05 wk-ano-atual            pic 9(04).
           05 wk-mes-atual            pic 9(02).
           05 wk-dia-atual            pic 9(02).


       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.



            display "wk-preco:  " wk-preco
            display "wk-preco2: " wk-preco2
            display "wk-preco3: " wk-preco3

            move  10000025,45   to     wk-preco4
            display "wk-preco4: " wk-preco4


            move  10000025,45   to     wk-preco5
            display "wk-preco4: " wk-preco5

            move 12312312312  to wk-cpf
            display "wk-cpf: "  wk-cpf


            move "15/07/2022" to  wk-data-numerica
            compute wk-dia = wk-dia + 1
      *     move 07           to  wk-mes
      *     move 2022         to  wk-ano

            display "Data Formatada: " wk-data-formatada

      *     Recebendo data do sistema
            accept wk-data-atual  from date YYYYMMDD

            display "wk-data-atual " wk-data-atual

            move wk-dia-atual   to   wk-dia
            move wk-mes-atual   to   wk-mes
            move wk-ano-atual   to   wk-ano

            display "Data Atual Formatada: "  wk-data-formatada

      *     compute wk-area = wk-pi * 2 * wk-raio

            display "wk-num2 " wk-num2

      *     display "Data: " wk-data





	   stop run.

