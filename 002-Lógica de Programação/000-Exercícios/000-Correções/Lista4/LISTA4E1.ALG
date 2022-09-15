Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Seção de Declarações das variáveis 
   velocidade, multa, deltaVeloc: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval("Velocidade:")
   leia(velocidade)
   
   se (velocidade > 80) entao
       deltaVeloc :=  (velocidade - 80)
       multa := deltaVeloc * 5.00
       escreval("Você foi multado por excesso de velocidade!!!")
       escreval("Você passou ", deltaVeloc, "Km/h do limite...")
       escreval("Multa: ", multa)
   senao
       escreval("Parabéns vc é um motorista exemplar!!!")
   fimse
   
   


Fimalgoritmo