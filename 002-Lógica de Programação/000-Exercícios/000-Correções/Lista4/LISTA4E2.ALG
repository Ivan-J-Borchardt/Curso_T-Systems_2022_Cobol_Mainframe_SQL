Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Se��o de Declara��es das vari�veis 

   anoNascimento, idade, deltaIdade : inteiro
   anoAtual, idadeReferencia : inteiro
   

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

    anoAtual := 2022
    idadeReferencia := 16

    escreval("Informe o ano de nascimento: ")
    leia(anoNascimento)

    idade := anoAtual - anoNascimento
    deltaIdade := idadeReferencia - idade
    
    se (idade >= idadeReferencia) entao
        escreval("J� pode votar...")
    senao
        escreval("N�o pode votar...")
        escreval("Idade: ", idade, " Faltam ", deltaIdade, " anos para poder votar")
    fimse

   
   

Fimalgoritmo