Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Se��o de Declara��es das vari�veis 

   nome: caractere
   nota1, nota2, media : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreval("Aluno: ")
   leia(nome)
   
   escreval("Nota 1:")
   leia(nota1)
   
   escreval("Nota 2:")
   leia(nota2)
   
   //media := (nota1 + nota2)/2
   
   media := (nota1 * 0.5) + (nota2 * 0.5)
   
   se (media > 7) entao
       escreval(nome, " teve um aproveitamento acima da m�dia (", media, ")")
   senao
       escreval(nome, " n�o teve um bom aproveitamento (", media, ")")
   fimse


Fimalgoritmo