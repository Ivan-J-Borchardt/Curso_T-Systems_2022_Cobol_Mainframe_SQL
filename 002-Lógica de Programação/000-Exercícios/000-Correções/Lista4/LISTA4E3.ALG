Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Seção de Declarações das variáveis 

   nome: caractere
   nota1, nota2, media : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval("Aluno: ")
   leia(nome)
   
   escreval("Nota 1:")
   leia(nota1)
   
   escreval("Nota 2:")
   leia(nota2)
   
   //media := (nota1 + nota2)/2
   
   media := (nota1 * 0.5) + (nota2 * 0.5)
   
   se (media > 7) entao
       escreval(nome, " teve um aproveitamento acima da média (", media, ")")
   senao
       escreval(nome, " não teve um bom aproveitamento (", media, ")")
   fimse


Fimalgoritmo