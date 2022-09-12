Algoritmo "Lista2E8"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/12/2022
Var
// Seção de Declarações das variáveis 
   dolares, valorCarteira, cotacao: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   cotacao := 3.45
   
   escreval("Informe o valor em reais na carteira: ")
   leia(valorCarteira)

   dolares := valorCarteira/cotacao
   
   escreval("O valor em dolares é: ", dolares)
   
Fimalgoritmo