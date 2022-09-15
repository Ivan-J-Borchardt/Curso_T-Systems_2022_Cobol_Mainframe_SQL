Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/14/2022
Var
// Seção de Declarações das variáveis 
   menu : caractere
   area, raio, base, altura, lado: real
   
   

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval("Cálculo area de formas geométricas")
   escreval("'a' p/ circulo")
   escreval("'b' p/ retângulo")
   escreval("'c' p/ triângulo retângulo")
   escreval("'d' p/ triângulo equilátero")
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

   
   //area triangulo equilátero
   se (menu = "d") entao
      escreval("Lado: ")
      leia(lado)
      area := ((lado * lado) * (3 ^ 1/2))/4
   fimse
   
   escreval("Area: ", area)



Fimalgoritmo