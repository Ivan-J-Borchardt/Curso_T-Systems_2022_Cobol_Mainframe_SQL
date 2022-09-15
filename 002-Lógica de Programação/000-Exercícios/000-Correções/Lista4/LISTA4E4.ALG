Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Seção de Declarações das variáveis 

   num, resto : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval("Numero: ")
   leia(num)
   
   resto := num % 2
   
   se (resto = 0) entao
       escreval("O número é par")
   senao
       escreval("O número é impar")
   fimse


Fimalgoritmo