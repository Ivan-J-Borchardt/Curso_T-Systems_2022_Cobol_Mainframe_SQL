Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Se��o de Declara��es das vari�veis 
   velocidade, multa, deltaVeloc: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreval("Velocidade:")
   leia(velocidade)
   
   se (velocidade > 80) entao
       deltaVeloc :=  (velocidade - 80)
       multa := deltaVeloc * 5.00
       escreval("Voc� foi multado por excesso de velocidade!!!")
       escreval("Voc� passou ", deltaVeloc, "Km/h do limite...")
       escreval("Multa: ", multa)
   senao
       escreval("Parab�ns vc � um motorista exemplar!!!")
   fimse
   
   


Fimalgoritmo