Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/9/2022
Var
// Seção de Declarações das variáveis 

   num, antecessor, sucessor: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreva("Informe um número: ")
   leia(num)
   
   antecessor := num - 1
   sucessor := num + 1
   
   escreval("O antecessor de ", num," é ", antecessor)
   escreval("O sucessor de ", num," é ", sucessor)


Fimalgoritmo