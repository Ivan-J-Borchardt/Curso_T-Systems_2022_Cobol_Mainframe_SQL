Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Seção de Declarações das variáveis 

   numero : inteiro
   continuar : caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   numero := 0
   continuar := ""

   //Exemplo 1
   enquanto (continuar <> "n") faca
   
      escreval("deseja continuar? s/n")
      leia(continuar)

   fimenquanto

   //Exemplo 2
   enquanto (numero < 10) faca

      escreval("Entrou ", numero)
      numero := numero + 1

   fimenquanto
   
   
   //Exemplo3
   numero := 5
   escreva("Inicio ")
   enquanto (numero < 13 ) faca

      escreva(numero, " ")
      numero := numero + 1
   
   fimenquanto
   escreva("Acabou!")
   


Fimalgoritmo