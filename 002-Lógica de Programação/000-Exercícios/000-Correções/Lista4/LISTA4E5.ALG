Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Seção de Declarações das variáveis 

   ano : inteiro
   resto4 : inteiro
   resto100 : inteiro
   resto400 : inteiro
   

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

   escreval("Ano: ")
   leia(ano)
   
   resto4   := ano % 4
   resto100 := ano % 100
   resto400 := ano % 400
   
   se (resto400 = 0) entao
      escreval("é Ano Bissexto")
   senao
      se(resto100 = 0) entao
         escreval("não é Ano Bissexto")
      senao
         se (resto4 = 0) entao
            escreval("é Ano Bissexto")
         senao
            escreval("não é Ano Bissexto")
         fimse
      fimse
   fimse


Fimalgoritmo

// 1990  - Não é bissexto
// 2000  - é bissexto
// 1983  - Não é
// 2100  -  Nao eh

//   resto4   : 0
//   resto100 : 0
//   resto400 : 1