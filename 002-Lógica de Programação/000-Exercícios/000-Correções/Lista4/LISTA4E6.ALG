Algoritmo "Lista4E6"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/16/2022
Var
// Se��o de Declara��es das vari�veis 

   anoNasc, anoAtual, idade, deltaIdade : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

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
           escreval("J� se passaram ", deltaIdade, " anos desde o alistamento")
       senao
           escreval("V� se alistar!!!!")
       fimse
   fimse
   


Fimalgoritmo