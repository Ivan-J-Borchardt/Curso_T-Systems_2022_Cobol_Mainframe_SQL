Algoritmo "Lista3E6"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/14/2022
Var
// Se��o de Declara��es das vari�veis 

   num1, num2, resultado: real
   operacao: caractere

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   //Receber dois numeros e a operacao desejada
   escreval("Num1: ")
   leia(num1)
   
   escreval("Num2: ")
   leia(num2)
   
   escreval("Opera��o (+, -, *, /)")
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