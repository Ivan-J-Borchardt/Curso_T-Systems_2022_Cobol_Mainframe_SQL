Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Seção de Declarações das variáveis 

   anoNascimento, idade, deltaIdade : inteiro
   anoAtual, idadeReferencia : inteiro
   

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

    anoAtual := 2022
    idadeReferencia := 16

    escreval("Informe o ano de nascimento: ")
    leia(anoNascimento)

    idade := anoAtual - anoNascimento
    deltaIdade := idadeReferencia - idade
    
    se (idade >= idadeReferencia) entao
        escreval("Já pode votar...")
    senao
        escreval("Não pode votar...")
        escreval("Idade: ", idade, " Faltam ", deltaIdade, " anos para poder votar")
    fimse

   
   

Fimalgoritmo