Algoritmo "Lista2E9"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/12/2022
Var
// Seção de Declarações das variáveis 

   area, largura,  altura,  qtd_tinta : real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   //Entradas
   escreval("Altura da Parede:")
   leia(altura)
   escreval("Largura da Parede: ")
   leia(largura)
   
   //Processamento
   area := largura * altura
   qtd_tinta := area / 2
   
   //Saída
   escreval("Area: ", area, "m2")
   escreval("Qtd Tinta: ", qtd_tinta, "L")
         
Fimalgoritmo