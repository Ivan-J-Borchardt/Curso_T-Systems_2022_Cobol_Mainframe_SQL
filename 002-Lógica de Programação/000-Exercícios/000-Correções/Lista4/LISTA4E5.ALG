Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Se��o de Declara��es das vari�veis 

   ano : inteiro
   resto4 : inteiro
   resto100 : inteiro
   resto400 : inteiro
   

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

   escreval("Ano: ")
   leia(ano)
   
   resto4   := ano % 4
   resto100 := ano % 100
   resto400 := ano % 400
   
   se (resto400 = 0) entao
      escreval("� Ano Bissexto")
   senao
      se(resto100 = 0) entao
         escreval("n�o � Ano Bissexto")
      senao
         se (resto4 = 0) entao
            escreval("� Ano Bissexto")
         senao
            escreval("n�o � Ano Bissexto")
         fimse
      fimse
   fimse


Fimalgoritmo

// 1990  - N�o � bissexto
// 2000  - � bissexto
// 1983  - N�o �
// 2100  -  Nao eh

//   resto4   : 0
//   resto100 : 0
//   resto400 : 1