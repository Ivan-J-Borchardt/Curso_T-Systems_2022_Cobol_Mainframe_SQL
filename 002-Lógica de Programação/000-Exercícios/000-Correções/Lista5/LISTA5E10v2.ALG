Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/19/2022
Var
// Seção de Declarações das variáveis 

   opcao : caractere
   inicioIntervalo, fimIntervalo, cont : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


   escreval("Inicio Intervalo")
   leia(inicioIntervalo)
   
   escreval("Fim Intervalo")
   leia(fimIntervalo)


   
   se (inicioIntervalo <= fimIntervalo) entao
      escreval("Opção 'p' ou 'i'")
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
         escreval("Opcao Inválida!")
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