Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Se��o de Declara��es das vari�veis 

   numero : inteiro
   continuar : caractere

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

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