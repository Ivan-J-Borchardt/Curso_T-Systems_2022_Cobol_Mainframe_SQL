Algoritmo "Lista2E9"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/12/2022
Var
// Se��o de Declara��es das vari�veis 

   area, largura,  altura,  qtd_tinta : real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   //Entradas
   escreval("Altura da Parede:")
   leia(altura)
   escreval("Largura da Parede: ")
   leia(largura)
   
   //Processamento
   area := largura * altura
   qtd_tinta := area / 2
   
   //Sa�da
   escreval("Area: ", area, "m2")
   escreval("Qtd Tinta: ", qtd_tinta, "L")
         
Fimalgoritmo