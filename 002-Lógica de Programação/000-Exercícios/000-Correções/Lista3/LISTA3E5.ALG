Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/13/2022
Var
// Se��o de Declara��es das vari�veis 

   num1, num2, num3, menorNum, maiorNum, numMediano: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreval("Num. 1")
   leia(num1)
   
   escreval("Num. 2")
   leia(num2)
   
   escreval("Num. 3")
   leia(num3)
   
   menorNum := num1
   maiorNum := num1
   numMediano := num1

    //Procurando o maior numero
   se(num2 > maiorNum)entao
      maiorNum := num2
   fimse
   
   se(num3 > maiorNum)entao
      maiorNum := num3
   fimse
   
   //Procurando o menor numero
   se(num2 < menorNum)entao
      menorNum := num2
   fimse

   se(num3 < menorNum)entao
      menorNum := num3
   fimse
   
   //Procurando o N�mero mediano
   se (menorNum <> num2) entao
       se (maiorNum <> num2) entao
           numMediano := num2
       fimse
   fimse
   
   se (menorNum <> num3) entao
       se (maiorNum <> num3) entao
           numMediano := num3
       fimse
   fimse
   
   //Saidas
   escreva(maiorNum  , " - ", numMediano, " - ", menorNum )

Fimalgoritmo
//num1: 55
//num2: 3
//num3: 7
//menorNum: 3
//maiorNum: 55
//numMediano: 55