Algoritmo "HelloWorld"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/8/2022
Var
// Seção de Declarações das variáveis 

   num1 : inteiro   //num inteiro
   num2 : inteiro
   result : real    //numero decimal
   
   ehLigado : logico  //verdadeiro ou falso
   operacao : caractere  //Texto


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

    operacao := "teste"

    //Exemplos de saida na tela e leitura do teclado
    escreval("Informe o Primeiro Numero: ")
    leia(num1)
    
    escreval("Informe o Segundo Numero: ")
    leia(num2)
    
    //Exemplo Extrutura de Seleção
    se num1 > 0 entao
       escreval("O num1 eh maior que Zero...")
    fimse
    
    //Exemplo Operação Aritmética
    result <- num1 / num2
    
    escreval("Resultado: ",  result)
    
    

Fimalgoritmo