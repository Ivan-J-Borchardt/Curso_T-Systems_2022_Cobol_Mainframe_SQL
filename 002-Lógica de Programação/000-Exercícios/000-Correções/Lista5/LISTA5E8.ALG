Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/16/2022
Var
// Se��o de Declara��es das vari�veis 

   num, fimContagem, paso : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreval("Inicio Contagem: ")
   leia(num)
   
   escreval("Fim Contagem: ")
   leia(fimContagem)
   
   escreval("Passo: ")
   leia(paso)
   
   escreva("Inicio ")
   
   se (num <= fimContagem) entao
      enquanto (num <= fimContagem) faca
         escreva(num,  " ")
         num := num + paso
      fimenquanto
   senao
      enquanto (num >= fimContagem) faca
         escreva(num,  " ")
         num := num - paso
      fimenquanto
   fimse
   
   escreva("Acabou!")


Fimalgoritmo

//num  7

