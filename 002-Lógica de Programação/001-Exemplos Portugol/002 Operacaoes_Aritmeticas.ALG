Algoritmo "OPAritmetica"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/9/2022
Var
// Seção de Declarações das variáveis 

   num1: inteiro
   num2: inteiro
   result1, result2, result3, result4, result5, result6, result7: real
   
   porcentagem: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   num1 := 20
   num2 := 3
   
   //Adicao, Subtração, Multiplicação, Divisão
   result1 := num1 + num2
   escreval("Resultado Adição: ", result1)
   
   result2 := num1 - num2
   escreval("Resultado Subtração: ", result2)
   
   result3 := num1 * num2
   escreval("Resultado Multiplicação: ", result3)
   
   result4 := num1 / num2
   escreval("Resultado Divisão: ", result4)
   
   //Resto da divisão
   result5 := num1 % num2
   escreval("Resultado Resto: ", result5)
   
   //Calculo de porcentagem  (3% de 50...)
   porcentagem :=  (3 * 50)/100
   
   porcentagem := 0.03 * 50
   
   //Potenciação
   result6 := 3^3
   escreval("Resultado Potenciação: ", result6)


   //Radiciação de 'n'
   result7 := 27^(1/3)
   escreval("Resultado Radiciação: ", result7)

Fimalgoritmo