Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/19/2022
Var
// Se��o de Declara��es das vari�veis 

   num, acumulador : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   num := 6
   enquanto (num <= 100) faca
      //escreval("num ", num)
      se ((num % 2) = 0) entao
          acumulador := acumulador + num
      fimse
      num := num + 1
   fimenquanto

   escreval("Soma: ", acumulador)

Fimalgoritmo