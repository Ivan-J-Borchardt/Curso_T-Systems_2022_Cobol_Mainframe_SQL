Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/16/2022
Var
// Se��o de Declara��es das vari�veis 

   lado1, lado2, lado3 : real
   msn : caractere

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   //Entradas:
   escreval("Lado 1: ")
   leia(lado1)
   
   escreval("Lado 2: ")
   leia(lado2)
   
   escreval("Lado 3: ")
   leia(lado3)

   //Processamento:
   //se (lado1 < (lado2 + lado3)) e (lado2 < (lado1 + lado3)) e (lado3 < (lado1 + lado2)) entao
   //    msn := "� possivel formar um triangulo"
   //senao
   //    msn := "N�o � poss�vel formar um triangulo"
   //fimse
   
   se (lado1 >= (lado2 + lado3)) ou (lado2 >= (lado1 + lado3)) ou  (lado3 >= (lado1 + lado2)) entao
       msn := "N�o � poss�vel formar um triangulo"
   senao
       msn := "� possivel formar um triangulo"
   fimse

   //saida:
   escreval(msn)


Fimalgoritmo