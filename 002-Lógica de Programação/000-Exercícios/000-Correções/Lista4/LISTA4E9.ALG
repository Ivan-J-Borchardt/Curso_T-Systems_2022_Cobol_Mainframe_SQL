Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/16/2022
Var
// Seção de Declarações das variáveis 

   lado1, lado2, lado3 : real
   msn : caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   //Entradas:
   escreval("Lado 1: ")
   leia(lado1)
   
   escreval("Lado 2: ")
   leia(lado2)
   
   escreval("Lado 3: ")
   leia(lado3)

   //Processamento:
   //se (lado1 < (lado2 + lado3)) e (lado2 < (lado1 + lado3)) e (lado3 < (lado1 + lado2)) entao
   //    msn := "É possivel formar um triangulo"
   //senao
   //    msn := "Não é possível formar um triangulo"
   //fimse
   
   se (lado1 >= (lado2 + lado3)) ou (lado2 >= (lado1 + lado3)) ou  (lado3 >= (lado1 + lado2)) entao
       msn := "Não é possível formar um triangulo"
   senao
       msn := "É possivel formar um triangulo"
   fimse

   //saida:
   escreval(msn)


Fimalgoritmo