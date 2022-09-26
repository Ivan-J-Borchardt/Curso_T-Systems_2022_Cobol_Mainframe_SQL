      *Divisao de identificacao
       identification division.
       program-id. "Lista3E10".
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
       01  wk-usuarios.
	   05  wk-user1-mai		 pic x(008) value "Aluno1".
	   05  wk-user1-min		 pic x(008) value "aluno1".
	   05  wk-user2			 pic x(008) value "Aluno2".
	   05  wk-user3			 pic x(008) value "Aluno3".

       01  wk-senhas.
	   05  wk-senha1		 pic x(009) value "Trocar123".
	   05  wk-senha2		 pic x(009) value "Senha@123".
	   05  wk-senha3		 pic x(009) value "123Trocar".

       77  wk-user			 pic x(008).
       77  wk-senha			 pic x(009).

       linkage section.


       screen section.




      *Declaracao do corpo do programa
       procedure division.


	   display "Usuario:  "
	   accept wk-user

	   display "Senha: "
	   accept wk-senha

	   if wk-user = wk-user1-mai
	   or wk-user = wk-user1-min   then
	       if wk-senha = wk-senha1 then
		   display "Acesso permitido"
	       else
		   display "Senha Incorreta"
	       end-if
	   else
	       if wk-user = wk-user2 then
		   if wk-senha = wk-senha2 then
		       display "Acesso permitido"
		   else
		       display "Senha Incorreta"
		   end-if
	       else
		   if wk-user = wk-user3 then
		       if wk-senha = wk-senha3 then
			   display "Acesso permitido"
		       else
			   display "Senha Incorreta"
		       end-if
		   else
		       display "Usuario nao cadastrado"
		   end-if
	       end-if
	   end-if

	   stop run.
