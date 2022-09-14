Algoritmo "Lista3E6"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/14/2022
Var
// Seção de Declarações das variáveis 

   num1, num2, resultado: real
   operacao: caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   //Receber dois numeros e a operacao desejada
   escreval("Num1: ")
   leia(num1)
   
   escreval("Num2: ")
   leia(num2)
   
   escreval("Operação (+, -, *, /)")
   leia(operacao)
   

   //Idenficar a operacao
   se(operacao = "+") entao
      resultado := num1 + num2  //Efetuar a operaco correspondente com os dois numeros recebidos na entrada
   fimse
   
   se(operacao = "-") entao
      resultado := num1 - num2  //Efetuar a operaco correspondente com os dois numeros recebidos na entrada
   fimse
   
   se(operacao = "*") entao
      resultado := num1 * num2  //Efetuar a operaco correspondente com os dois numeros recebidos na entrada
   fimse
   
   se(operacao = "/") entao
      resultado := num1 / num2  //Efetuar a operaco correspondente com os dois numeros recebidos na entrada
   fimse

   //Exibir resultado
   escreval("Resultado: ", resultado)
   
Fimalgoritmo

//num1 : 15
//num2 : 2
//resultado : 13
//operacao:  "-"