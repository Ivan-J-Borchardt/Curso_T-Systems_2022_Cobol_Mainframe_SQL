Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/14/2022
Var
// Se��o de Declara��es das vari�veis 
   menu : caractere
   area, raio, base, altura, lado: real
   
   

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreval("C�lculo area de formas geom�tricas")
   escreval("'a' p/ circulo")
   escreval("'b' p/ ret�ngulo")
   escreval("'c' p/ tri�ngulo ret�ngulo")
   escreval("'d' p/ tri�ngulo equil�tero")
   leia(menu)
   
   //area circulo
   se (menu = "a") entao
      escreval("Raio: ")
      leia(raio)
      area := 2 * 3.14159265 * raio
   fimse
   
   
   //area retangulo
   se (menu = "b") entao
      escreval("Base: ")
      leia(base)
      escreval("Altura ")
      leia(altura)
      area := base * altura
   fimse

   
   //area triangulo retangulo
   se (menu = "c") entao
      escreval("Base: ")
      leia(base)
      escreval("Altura ")
      leia(altura)
      area := (base * altura)/2
   fimse

   
   //area triangulo equil�tero
   se (menu = "d") entao
      escreval("Lado: ")
      leia(lado)
      area := ((lado * lado) * (3 ^ 1/2))/4
   fimse
   
   escreval("Area: ", area)



Fimalgoritmo