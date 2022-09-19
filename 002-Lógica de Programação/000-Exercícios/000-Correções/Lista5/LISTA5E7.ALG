Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/19/2022
Var
// Seção de Declarações das variáveis 

   num, acumulador : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

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