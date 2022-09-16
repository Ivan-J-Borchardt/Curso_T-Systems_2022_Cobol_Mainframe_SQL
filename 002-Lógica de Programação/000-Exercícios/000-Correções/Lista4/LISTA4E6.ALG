Algoritmo "Lista4E6"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/16/2022
Var
// Seção de Declarações das variáveis 

   anoNasc, anoAtual, idade, deltaIdade : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   anoAtual := 2022

   escreval("Ano de Nascimento:")
   leia(anoNasc)
   
   idade := anoAtual - anoNasc
   
   se (idade < 18) entao
       deltaIdade := 18 - idade  //Anos que faltam para se alistar
       escreval("Faltam ", deltaIdade, " anos para o alistamento")
   senao
       se (idade > 18) entao
           deltaIdade := idade - 18 //Anos que se passaram desde o alistamento
           escreval("Já se passaram ", deltaIdade, " anos desde o alistamento")
       senao
           escreval("Vá se alistar!!!!")
       fimse
   fimse
   


Fimalgoritmo