Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Se��o de Declara��es das vari�veis 

   num, resto : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreval("Numero: ")
   leia(num)
   
   resto := num % 2
   
   se (resto = 0) entao
       escreval("O n�mero � par")
   senao
       escreval("O n�mero � impar")
   fimse


Fimalgoritmo