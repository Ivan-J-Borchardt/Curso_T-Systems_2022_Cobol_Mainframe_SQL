Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/16/2022
Var
// Seção de Declarações das variáveis 
    distancia, precoPorKm, precoPassagem : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   //Entradas
   escreval("Distancia (Km):" )
   leia(distancia)

   //Processamento

   se (distancia > 200) entao
      precoPorKm := 0.45
   senao
      precoPorKm := 0.50
   fimse

   precoPassagem  := distancia * precoPorKm

   //Saidas
   escreval("Preço passagem: ", precoPassagem)

Fimalgoritmo