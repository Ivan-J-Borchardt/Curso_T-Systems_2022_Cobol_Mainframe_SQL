Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/19/2022
Var
// Se��o de Declara��es das vari�veis 

   opcao : caractere
   inicioIntervalo, fimIntervalo, cont : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 


   escreval("Inicio Intervalo")
   leia(inicioIntervalo)
   
   escreval("Fim Intervalo")
   leia(fimIntervalo)


   
   se (inicioIntervalo <= fimIntervalo) entao
      escreval("Op��o 'p' ou 'i'")
      leia(opcao) //  ('p' 'i')
   
      se (opcao = "p") ou (opcao = "i") entao

         cont := inicioIntervalo
         enquanto (cont <= fimIntervalo) faca
            se (opcao = "p") entao
               se (cont % 2 = 0) entao
                  escreval(cont,  " ")
               fimse
            senao
               se (cont % 2 <> 0) entao
                  escreval(cont,  " ")
               fimse
            fimse
            cont := cont + 1
         fimenquanto

      senao
         escreval("Opcao Inv�lida!")
      fimse
   senao
      escreval("Erro: Inicio do intervalo MAIOR que fim intervalo!")
   fimse


   
Fimalgoritmo

// opcao : "i"
//  inicioIntervalo : 2
//  fimIntervalo : 10
//  cont : 6

//2 4 6