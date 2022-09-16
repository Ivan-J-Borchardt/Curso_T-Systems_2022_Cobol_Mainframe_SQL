Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/16/2022
Var
// Seção de Declarações das variáveis 

   num, resto : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   num := 30
   escreva("Inicio ")

   enquanto (num > 0) faca
      resto := num % 4
      
      se (resto = 0) entao
         escreva("[",num," ] ")
      senao
         escreva(num,  " ")
      fimse
      num := num - 1
   fimenquanto
   
   escreva("Acabou!")


Fimalgoritmo

//num  7

