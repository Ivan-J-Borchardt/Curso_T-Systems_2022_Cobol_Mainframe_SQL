      *Divisao de identificacao
       identification division.
       program-id. "Lista3E8".
       author. "Ivan J. Borchardt".
       installation. "PC".
       date-written. 26/09/2022.
       date-compiled. 26/09/2022.


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
       01  wk-medidas.
	   05  wk-raio				 pic 9(003)V99.
	   05  wk-base				 pic 9(003)V99.
	   05  wk-altura			 pic 9(003)V99.
	   05  wk-lado				 pic 9(003)V99.
	   05  wk-area				 pic 9(006)V99.

       77  wk-forma-geo				 pic x(002).

       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


	   display "Forma Geometrica:  "
	   display "Circulo - ci"
	   display "Retangulo - re"
	   display "Triangulo Retangulo - tr"
	   display "Trianhulo Equilatero - te"
	   accept wk-forma-geo

	   evaluate wk-forma-geo
	       when "ci"
		   display "Raio: "
		   accept wk-raio
		   compute wk-area = 2 * 3,1415 * wk-raio
		   display "Area do circulo: "	wk-area

	       when "re"
		   display "Base: "
		   accept wk-base
		   display "Altura: "
		   accept wk-altura
		   compute wk-area = wk-base * wk-altura
		   display "Area do retangulo: " wk-area

	       when "tr"
		   display "Base: "
		   accept wk-base
		   display "Altura: "
		   accept wk-altura
		   compute wk-area = (wk-base * wk-altura)/2
		   display "Area do triangulo retangulo: " wk-area

	       when "te"
		   display "Lado: "
		   accept wk-lado
		   compute wk-area = ((wk-lado * wk-lado) *
				      (3 ** 1/2))/4

		   display "Area do triangulo equilatero: " wk-area

	       when other
		   display "Opcao invalida"
	   end-evaluate

	   stop run.
