Algoritmo "HelloWorld"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/8/2022
Var
// Se��o de Declara��es das vari�veis 

    num1 : inteiro   //num inteiro
    num2 : inteiro
    result : real    //numero decimal
   
    ehLigado : logico  //verdadeiro ou falso
    operacao : caractere  //Texto


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

    operacao := "teste"

    //Exemplos de saida na tela e leitura do teclado
    escreval("Informe o Primeiro Numero: ")
    leia(num1)
    
    escreval("Informe o Segundo Numero: ")
    leia(num2)
    
    //Exemplo Extrutura de Sele��o
    se num1 > num2 entao
        escreval("O num1 eh maior que num2...")
        result := num1 * num2
        se result > 500 entao
            escreva("Resultado : ", resultado)
        fimse
    fimse
    
    //Exemplo Opera��o Aritm�tica
    result <- num1 / num2   //(/, *, +, -)
    
    escreval("Resultado: ",  result)
    
    

Fimalgoritmo